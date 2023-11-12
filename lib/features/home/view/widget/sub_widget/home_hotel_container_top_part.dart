import 'package:flutter/material.dart';
import 'package:task/core/constant/colors.dart';

import '../../../model/hotel_model.dart';

class HomeHotelContainerTopPart extends StatelessWidget {
  const HomeHotelContainerTopPart({super.key, required this.hotelModel});
  final HotelModel hotelModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            ...List.generate(
                hotelModel.starts,
                (index) => const Icon(
                      Icons.star,
                      color: AppColors.deepGrey,
                      size: 17,
                    )),
            Text(
              'Hotel',
              style: Theme.of(context).textTheme.displaySmall,
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          hotelModel.name,
          style: Theme.of(context).textTheme.displayLarge,
        ),
        const SizedBox(
          height: 5,
        ),
        Row(
          children: [
            Container(
              margin: const EdgeInsets.only(right: 5),
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
              decoration: BoxDecoration(
                  color: AppColors.darkGreen,
                  borderRadius: BorderRadius.circular(12)),
              child: Text(
                '${hotelModel.reviewScore}',
                style: Theme.of(context)
                    .textTheme
                    .displayMedium!
                    .copyWith(color: AppColors.white),
              ),
            ),
            Text(
              hotelModel.review,
              style: Theme.of(context)
                  .textTheme
                  .displayMedium!
                  .copyWith(fontSize: 14),
            ),
            const SizedBox(
              width: 10,
            ),
            Icon(
              Icons.location_on,
              color: AppColors.black.withOpacity(0.9),
              size: 14,
            ),
            const SizedBox(
              width: 5,
            ),
            Expanded(
              child: Text(
                hotelModel.address,
                style: Theme.of(context)
                    .textTheme
                    .displayMedium!
                    .copyWith(fontSize: 14),
              ),
            ),
          ],
        )
      ],
    );
  }
}
