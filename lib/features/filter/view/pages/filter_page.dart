import 'package:flutter/material.dart';
import 'package:task/core/constant/colors.dart';
import 'package:task/features/filter/view/widgets/filter_rating_widget.dart';

import '../../../../core/constant/app_size.dart';
import '../../../../view/widgets/custom_button.dart';
import '../widgets/filter_distance_widget.dart';
import '../widgets/filter_hotel_widget.dart';
import '../widgets/filter_price_widget.dart';
import '../widgets/filter_top_part.dart';

class FilterPage extends StatelessWidget {
  const FilterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppSize.screenHight * 0.93,
      decoration: BoxDecoration(
        color: AppColors.lGrey,
        borderRadius: const BorderRadius.vertical(top: Radius.circular(14)),
      ),
      child: Column(
        children: [
          FilterTopPart(),
          const Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  FilterPriceWidget(),
                  FilterRatingWidget(),
                  FilterHotelWidget(),
                  FilterDistanceWidget(),
                ],
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            width: AppSize.screenWidth,
            color: AppColors.white,
            child: Column(
              children: [
                CustomButton(
                    buttonBody: 'Show results', onTap: () {}, radius: 6),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
