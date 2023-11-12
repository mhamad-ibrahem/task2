import 'package:flutter/material.dart';
import '../../../core/constant/colors.dart';
import '../../../core/constant/text_styles.dart';
import '../../core/constant/app_size.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.buttonBody,
    required this.onTap,
    this.buttonWidth,
    this.height,
    this.isReverseColor = false,
    this.isLoading = false,
    this.buttonColor,
    this.radius,
    this.child,
    this.textColor,
    this.padding,
  }) : super(key: key);
  final double? buttonWidth;
  final VoidCallback? onTap;
  final String buttonBody;
  final double? height;
  final double? radius;
  final bool isReverseColor;
  final bool isLoading;
  final Color? buttonColor;
  final Color? textColor;
  final Widget? child;
  final EdgeInsetsGeometry? padding;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      padding: padding ?? const EdgeInsets.all(0),
      onPressed: onTap,
      color: isReverseColor == true
          ? AppColors.white
          : buttonColor ?? AppColors.primaryColor,
      disabledColor: AppColors.deepGrey,
      disabledTextColor: AppColors.black,
      height: height ?? 50,
      shape: RoundedRectangleBorder(
          borderRadius:
              BorderRadius.circular(radius ?? AppSize.appCustomRadius),
          side: isReverseColor == true
              ? const BorderSide(color: AppColors.primaryColor)
              : BorderSide(color: buttonColor ?? AppColors.primaryColor)),
      child: SizedBox(
        width: buttonWidth ?? AppSize.screenWidth * 0.8,
        child: child ??
            Center(
                child: Text(
              buttonBody,
              style: buttonTextStyle(context: context).copyWith(
                  color: isReverseColor == true
                      ? AppColors.primaryColor
                      : textColor ?? AppColors.white),
            )),
      ),
    );
  }
}
