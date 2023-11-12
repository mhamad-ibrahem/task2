import 'package:flutter/material.dart';
import 'package:task/core/constant/colors.dart';

import '../../../model/hotel_model.dart';
import 'home_hotel_container_bottom_part.dart';
import 'home_hotel_container_top_part.dart';

class HomeHotelContainerBody extends StatelessWidget {
  const HomeHotelContainerBody({super.key, required this.hotelModel});
  final HotelModel hotelModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 10),
          child: HomeHotelContainerTopPart(hotelModel: hotelModel),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 7),
          child: HomeHotelContainerBottomPart(hotelModel: hotelModel),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 25, bottom: 15, top: 5),
          child: Align(
            alignment: Alignment.topRight,
            child: GestureDetector(
                onTap: () {},
                child: Text(
                  'More prices',
                  style: Theme.of(context).textTheme.displayMedium!.copyWith(
                      color: AppColors.deepGrey,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline),
                )),
          ),
        )
      ],
    );
  }
}
