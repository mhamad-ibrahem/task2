import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task/core/constant/colors.dart';
import 'package:task/features/home/controller/home_controller.dart';

class FilterPriceWidget extends StatelessWidget {
  const FilterPriceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: GetBuilder<HomeController>(
        builder: (controller) => Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'PRICE PER NIGHT',
                  style: Theme.of(context)
                      .textTheme
                      .displayMedium!
                      .copyWith(fontSize: 13, fontWeight: FontWeight.bold),
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                  decoration: BoxDecoration(
                      border: Border.all(color: AppColors.deepGrey),
                      borderRadius: BorderRadius.circular(6)),
                  child: Row(
                    children: [
                      Text(
                        '${controller.priceFilter.toInt()}+',
                        style: Theme.of(context)
                            .textTheme
                            .displaySmall!
                            .copyWith(fontSize: 16),
                      ),
                      Text(
                        ' \$',
                        style: Theme.of(context)
                            .textTheme
                            .displaySmall!
                            .copyWith(fontSize: 16, color: AppColors.deepGrey),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Slider(
                thumbColor: AppColors.white,
                min: 20,
                max: 540,
                value: controller.priceFilter,
                onChanged: (val) {
                  controller.changPriceFilter(val);
                }),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '\$20',
                      style:
                          Theme.of(context).textTheme.displayMedium!.copyWith(
                                color: AppColors.deepGrey,
                                fontSize: 13,
                              ),
                    ),
                    Text(
                      '\$540+',
                      style:
                          Theme.of(context).textTheme.displayMedium!.copyWith(
                                color: AppColors.deepGrey,
                                fontSize: 13,
                              ),
                    ),
                  ]),
            )
          ],
        ),
      ),
    );
  }
}
