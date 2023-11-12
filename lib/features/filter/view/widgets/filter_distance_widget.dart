import 'package:flutter/material.dart';
import 'package:task/core/constant/colors.dart';

class FilterDistanceWidget extends StatelessWidget {
  const FilterDistanceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 20,
          ),
          Text(
            'DISTANCE FROM',
            style: Theme.of(context)
                .textTheme
                .displayMedium!
                .copyWith(fontSize: 13, fontWeight: FontWeight.bold),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20),
            padding: const EdgeInsets.symmetric(vertical: 20),
            decoration: const BoxDecoration(
                border: Border.symmetric(
                    horizontal:
                        BorderSide(color: AppColors.deepGrey, width: 0.4))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Location',
                  style: Theme.of(context).textTheme.displayMedium!.copyWith(
                        fontSize: 15,
                      ),
                ),
                Row(
                  children: [
                    Text(
                      'City center',
                      style: Theme.of(context)
                          .textTheme
                          .displayMedium!
                          .copyWith(fontSize: 15, color: AppColors.deepGrey),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: 18,
                      color: AppColors.deepGrey,
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
