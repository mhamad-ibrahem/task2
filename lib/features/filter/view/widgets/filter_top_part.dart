import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task/features/home/controller/home_controller.dart';

import '../../../../core/constant/Colors.dart';

class FilterTopPart extends StatelessWidget {
  FilterTopPart({super.key});
  final HomeController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
      decoration: const BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(14)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextButton(
              onPressed: () {
                controller.reset();
              },
              child: Text(
                'Reset',
                style: Theme.of(context).textTheme.displayMedium!.copyWith(
                    color: AppColors.deepGrey.withOpacity(0.5),
                    fontSize: 18,
                    decoration: TextDecoration.underline),
              )),
          Text(
            'Filters',
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
