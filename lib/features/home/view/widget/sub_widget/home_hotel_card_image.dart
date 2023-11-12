import 'package:flutter/material.dart';
import 'package:task/features/home/model/hotel_model.dart';

import '../../../../../core/constant/app_size.dart';
import '../../../../../view/shared/custom_chached_net_image.dart';
import '../../../../../view/shared/favorite_button.dart';

class HomeHotelCardImage extends StatelessWidget {
  const HomeHotelCardImage({super.key, required this.hotelModel});
  final HotelModel hotelModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: AppSize.screenWidth,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.vertical(
              top: Radius.circular(AppSize.appCustomRadius))),
      child: Stack(children: [
        ClipRRect(
          borderRadius: const BorderRadius.vertical(
              top: Radius.circular(AppSize.appCustomRadius)),
          child: SizedBox(
            height: 150,
            width: AppSize.screenWidth,
            child: CustomCachedNetImage(
              height: 150,
              width: AppSize.screenWidth,
              fit: BoxFit.fitWidth,
              imageUrl: hotelModel.image,
            ),
          ),
        ),
        Positioned(
            right: 13,
            top: 10,
            child: FavoriteButton(isFavorite: false, onPressed: () {})),
      ]),
    );
  }
}
