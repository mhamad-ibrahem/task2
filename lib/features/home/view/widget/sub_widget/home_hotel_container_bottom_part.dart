import 'package:flutter/material.dart';
import 'package:task/core/constant/colors.dart';

import '../../../model/hotel_model.dart';

class HomeHotelContainerBottomPart extends StatelessWidget {
  const HomeHotelContainerBottomPart({super.key, required this.hotelModel});
  final HotelModel hotelModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
          border: Border.all(
            color: AppColors.black,
          ),
          borderRadius: BorderRadius.circular(8)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(5),
            margin: const EdgeInsets.only(bottom: 5),
            decoration: BoxDecoration(
              color: AppColors.teal,
              borderRadius: BorderRadius.circular(6),
            ),
            child: Text(
              'Our lowest price',
              style: Theme.of(context)
                  .textTheme
                  .displaySmall!
                  .copyWith(fontWeight: FontWeight.w600),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        '\$',
                        style: Theme.of(context)
                            .textTheme
                            .displayLarge!
                            .copyWith(fontSize: 16, color: AppColors.darkGreen),
                      ),
                      Text(
                        '${hotelModel.price}',
                        style: Theme.of(context)
                            .textTheme
                            .displayLarge!
                            .copyWith(fontSize: 22, color: AppColors.darkGreen),
                      ),
                    ],
                  ),
                  Text(
                    'Renaissance',
                    style: Theme.of(context).textTheme.displaySmall,
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 22),
                child: Row(
                  children: [
                    Text(
                      'View Deal',
                      style: Theme.of(context).textTheme.displayLarge!.copyWith(
                            fontSize: 18,
                          ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: 18,
                      color: AppColors.black,
                    )
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
