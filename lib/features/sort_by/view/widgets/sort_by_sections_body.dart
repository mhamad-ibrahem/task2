import 'package:flutter/material.dart';
import 'package:task/core/constant/colors.dart';

class SortBySectionsBody extends StatelessWidget {
  const SortBySectionsBody(
      {super.key,
      this.onTap,
      required this.title,
      this.isWithBottomDivider = false,
      this.isSelected = false});
  final void Function()? onTap;
  final String title;
  final bool isWithBottomDivider;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(20),
        margin: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
            color: AppColors.lGrey,
            border: isWithBottomDivider
                ? const Border.symmetric(
                    horizontal: BorderSide(color: AppColors.black, width: 0.5))
                : const Border(
                    top: BorderSide(color: AppColors.black, width: 0.5))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.displayMedium,
            ),
            if (isSelected)
              const Icon(
                Icons.check,
                color: AppColors.primaryColor,
                size: 20,
              )
          ],
        ),
      ),
    );
  }
}
