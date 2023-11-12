import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task/features/home/model/hotel_model.dart';

import '../../../core/api/status_request.dart';
import '../../../core/class/app_toast.dart';
import '../data/home_data.dart';

class HomeController extends GetxController {
  StatusRequest statusRequest = StatusRequest.none;
  HomeData homeData = HomeData(Get.find());
  String selectedSort = 'Our Recommendations';
  String filterRate = '';
  String filterHotelClass = '';
  double priceFilter = 540;
  List<HotelModel> hotelsList = [];
  getData() async {
    statusRequest = StatusRequest.loading;
    update();
    var response = await homeData.getData();
    response.fold((l) {
      AppToasts.errorToast(l.message);
      statusRequest = StatusRequest.failure;
      update();
    }, (r) {
      Get.back();
      debugPrint("data is $r");
      List jsonResponse = r;
      hotelsList = jsonResponse.map((e) => HotelModel.fromJson(e)).toList();
      statusRequest = StatusRequest.none;
      update();
    });
    update();
  }

  changeSelectedSort(String sort) {
    selectedSort = sort;
    update();
  }

  changeSelectedHotelClass(String hotel) {
    filterHotelClass = hotel;
    update();
  }

  changeSelectedRate(String rate) {
    filterRate = rate;
    update();
  }

  changPriceFilter(double value) {
    priceFilter = value;
    update();
  }

  reset() {
    filterRate = '';
    filterHotelClass = '';
    priceFilter = 540;
    update();
  }

  @override
  void onInit() {
    getData();
    super.onInit();
  }
}
