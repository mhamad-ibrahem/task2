import 'package:flutter/material.dart';
import 'package:task/core/constant/colors.dart';

class HomeFiltersWidget extends StatelessWidget {
  const HomeFiltersWidget(
      {super.key,
      required this.icon,
      required this.title,
      this.onTap,
      this.isUnderLineText = false});
  final String icon;
  final String title;
  final bool isUnderLineText;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        children: [
          SizedBox(height: 20, width: 20, child: Image.asset(icon)),
          const SizedBox(
            width: 11,
          ),
          Text(
            title,
            style: Theme.of(context).textTheme.displaySmall!.copyWith(
                  color: AppColors.primaryColor,
                  decoration: isUnderLineText
                      ? TextDecoration.underline
                      : TextDecoration.none,
                  fontSize: 16,
                ),
          ),
        ],
      ),
    );
  }
}
