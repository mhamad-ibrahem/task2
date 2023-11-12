import 'package:dartz/dartz.dart';
import '../../../core/api/api_errors.dart';
import '../../../core/api/api_links.dart';
import '../../../core/api/dio_crud.dart';

class HomeData {
  DioCrud crud;
  HomeData(this.crud);

  Future<Either<ApiErrors, List>> getData() async {
    return await crud.get(
      linkUrl: ApiLinks.hotelLink,
      isAuthorized: false,
    );
  }
}
