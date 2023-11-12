import 'package:flutter/material.dart';
import 'package:task/core/constant/app_size.dart';

import '../../model/hotel_model.dart';
import 'sub_widget/home_hotel_card_image.dart';
import 'sub_widget/home_hotel_container_body.dart';

class HomeHotelCard extends StatelessWidget {
  const HomeHotelCard({super.key, required this.hotelModel});
  final HotelModel hotelModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Material(
        borderRadius: BorderRadius.circular(AppSize.appCustomRadius),
        elevation: 6,
        child: Column(
          children: [
            HomeHotelCardImage(hotelModel: hotelModel),
            HomeHotelContainerBody(hotelModel: hotelModel),
          ],
        ),
      ),
    );
  }
}
