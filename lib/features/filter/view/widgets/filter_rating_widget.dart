import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task/core/constant/app_size.dart';
import 'package:task/features/home/controller/home_controller.dart';
import '../../data/raiting_static_data.dart';
import 'sub_widgets/filter_rating_body.dart';

class FilterRatingWidget extends StatelessWidget {
  const FilterRatingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'RATING',
            style: Theme.of(context)
                .textTheme
                .displayMedium!
                .copyWith(fontSize: 13, fontWeight: FontWeight.bold),
          ),
          GetBuilder<HomeController>(
            builder: (controller) => Container(
              margin: const EdgeInsets.only(top: 20),
              height: 40,
              width: AppSize.screenWidth,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: rateList.length,
                itemBuilder: (context, index) {
                  return FilterRatingBody(
                    title: rateList[index].rate,
                    color: rateList[index].color,
                    isSelected: controller.filterRate == rateList[index].rate,
                    onTap: () {
                      controller.changeSelectedRate(rateList[index].rate);
                    },
                  );
                },
                separatorBuilder: (context, index) => const SizedBox(
                  width: 40,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
