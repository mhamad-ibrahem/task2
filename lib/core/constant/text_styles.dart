import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Colors.dart';

TextStyle buttonTextStyle({required BuildContext context}) {
  return GoogleFonts.inter(
      textStyle: Theme.of(context).textTheme.displayLarge!.copyWith(
            color: AppColors.white,
            fontSize: 15,
          ));
}
