import 'package:flutter/material.dart';
import 'package:task/core/constant/app_size.dart';
import 'package:task/core/constant/colors.dart';
import 'package:task/features/home/controller/home_controller.dart';
import 'package:task/routes/routes_imports.dart';

import '../widgets/sort_by_sections_body.dart';
import '../widgets/sort_by_top_part.dart';

class SortByWidget extends StatelessWidget {
  SortByWidget({super.key});
  final HomeController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (controller) => Container(
        height: AppSize.screenHight * 0.93,
        decoration: BoxDecoration(
          color: AppColors.lGrey,
          borderRadius: const BorderRadius.vertical(top: Radius.circular(14)),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SortByTopPart(),
              SortBySectionsBody(
                title: 'Our Recommendations',
                isSelected: controller.selectedSort == 'Our Recommendations',
                onTap: () {
                  controller.changeSelectedSort('Our Recommendations');
                },
              ),
              SortBySectionsBody(
                title: 'Rating & Recommended',
                isSelected: controller.selectedSort == 'Rating & Recommended',
                onTap: () {
                  controller.changeSelectedSort('Rating & Recommended');
                },
              ),
              SortBySectionsBody(
                title: 'Price & Recommended',
                isSelected: controller.selectedSort == 'Price & Recommended',
                onTap: () {
                  controller.changeSelectedSort('Price & Recommended');
                },
              ),
              SortBySectionsBody(
                title: 'Distance & Recommended',
                isSelected: controller.selectedSort == 'Distance & Recommended',
                onTap: () {
                  controller.changeSelectedSort('Distance & Recommended');
                },
              ),
              SortBySectionsBody(
                title: 'Rating only',
                isSelected: controller.selectedSort == 'Rating only',
                onTap: () {
                  controller.changeSelectedSort('Rating only');
                },
              ),
              SortBySectionsBody(
                title: 'Price only',
                isSelected: controller.selectedSort == 'Price only',
                onTap: () {
                  controller.changeSelectedSort('Price only');
                },
              ),
              SortBySectionsBody(
                title: 'Distance only',
                isWithBottomDivider: true,
                isSelected: controller.selectedSort == 'Distance only',
                onTap: () {
                  controller.changeSelectedSort('Distance only');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
