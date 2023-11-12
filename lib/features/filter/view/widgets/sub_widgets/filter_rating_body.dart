import 'package:flutter/material.dart';
import 'package:task/core/constant/colors.dart';

class FilterRatingBody extends StatelessWidget {
  const FilterRatingBody(
      {super.key,
      required this.title,
      required this.color,
      this.isSelected = false,
      this.onTap});
  final String title;
  final Color color;
  final bool isSelected;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 40,
        width: 40,
        // padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(6),
            border: isSelected
                ? Border.all(color: AppColors.black, width: 2)
                : null),
        child: Center(
          child: Text(
            title,
            style: Theme.of(context)
                .textTheme
                .displayMedium!
                .copyWith(color: AppColors.white, fontSize: 14),
          ),
        ),
      ),
    );
  }
}
