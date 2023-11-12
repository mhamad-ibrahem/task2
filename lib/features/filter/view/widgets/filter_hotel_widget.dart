import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task/features/home/controller/home_controller.dart';

import '../../../../core/constant/app_size.dart';
import '../../data/hotel_static_data.dart';
import 'sub_widgets/filter_hotel_body.dart';

class FilterHotelWidget extends StatelessWidget {
  const FilterHotelWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'HOTEL CLASS',
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
                itemCount: hotelsList.length,
                itemBuilder: (context, index) {
                  return FilterHotelBody(
                    rate: hotelsList[index].image,
                    isSelected:
                        controller.filterHotelClass == hotelsList[index].rate,
                    onTap: () {
                      controller
                          .changeSelectedHotelClass(hotelsList[index].rate);
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
