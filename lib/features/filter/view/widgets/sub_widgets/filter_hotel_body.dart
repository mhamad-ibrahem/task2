import 'package:flutter/material.dart';
import 'package:task/core/constant/colors.dart';

class FilterHotelBody extends StatelessWidget {
  const FilterHotelBody(
      {super.key, required this.rate, this.isSelected = false, this.onTap});
  final String rate;
  final bool isSelected;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 40,
        width: 40,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          border: isSelected
              ? Border.all(color: AppColors.black, width: 2.5)
              : null,
        ),
        child: Image.asset(
          rate,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
