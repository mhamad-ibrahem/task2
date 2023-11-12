import 'dart:async';
import 'dart:developer';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import '../functions/check_internet_connection.dart';
import '../api/api_errors.dart';
import 'dart:io';

import 'api_links.dart';

final dio = Dio();

class DioCrud {
  Future<Either<ApiErrors, List>> get({
    required String linkUrl,
    required bool isAuthorized,
  }) async {
    try {
      if (await checkInternet()) {
        final response = await dio.get(linkUrl,
            options: Options(
                receiveTimeout: const Duration(seconds: 30),
                sendTimeout: const Duration(seconds: 30),
                headers: isAuthorized
                    ? ApiLinks.authorizedHeaders
                    : ApiLinks.header));
        if (response.statusCode == 200 || response.statusCode == 201) {
          return Right(response.data);
        } else {
          return Left(ResponseError(
              statusCode: response.statusCode,
              // message: responseBody['message'],
              message: 'Error'));
        }
      } else {
        return Left(NetworkError(message: "No internet connection"));
      }
    } on TimeoutException catch (e) {
      log('TimeOut for the request $e');
      return left(TimeOutError(message: "TimeOut for the request"));
    } on SocketException catch (e) {
      log('No internet connection | $e');
      return Left(NetworkError(message: "No internet connection"));
    } on DioException catch (e) {
      log("Catch error $e");

      return Left(ResponseError(
        message: "Catch error $e",
      ));
    }
  }
}
