import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/constant/Colors.dart';

class SortByTopPart extends StatelessWidget {
  const SortByTopPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8),
      decoration: const BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(14)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(
            width: 50,
          ),
          Text(
            'Sort by',
            style: Theme.of(context)
                .textTheme
                .displayMedium!
                .copyWith(fontSize: 17, fontWeight: FontWeight.bold),
          ),
          IconButton(
              onPressed: () {
                Get.back();
              },
              icon: const Icon(
                Icons.close,
                color: AppColors.black,
              ))
        ],
      ),
    );
  }
}
