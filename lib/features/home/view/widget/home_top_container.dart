import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task/core/constant/Colors.dart';
import 'package:task/core/constant/app_size.dart';
import 'package:task/core/constant/images.dart';
import 'package:task/features/sort_by/view/pages/sort_by.dart';

import '../../../filter/view/pages/filter_page.dart';
import 'sub_widget/home_filters_widget.dart';

class HomeTopContainer extends StatelessWidget {
  const HomeTopContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25, left: 10, right: 10, bottom: 10),
      child: Material(
        elevation: 4,
        borderRadius: const BorderRadius.vertical(
            bottom: Radius.circular(AppSize.appCustomRadius)),
        color: AppColors.white,
        child: Column(
          children: [
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                HomeFiltersWidget(
                    onTap: () {
                      Get.bottomSheet(
                          enableDrag: false,
                          enterBottomSheetDuration:
                              const Duration(milliseconds: 600),
                          isScrollControlled: true,
                          exitBottomSheetDuration:
                              const Duration(milliseconds: 600),
                          const FilterPage());
                    },
                    icon: AppImages.filter,
                    title: 'Filters'),
                HomeFiltersWidget(
                    onTap: () {
                      Get.bottomSheet(
                          enableDrag: false,
                          enterBottomSheetDuration:
                              const Duration(milliseconds: 600),
                          isScrollControlled: true,
                          exitBottomSheetDuration:
                              const Duration(milliseconds: 600),
                          SortByWidget());
                    },
                    isUnderLineText: true,
                    icon: AppImages.sort,
                    title: 'Sort'),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}
