import 'package:flutter/material.dart';

import '../../core/constant/Colors.dart';

class FavoriteButton extends StatelessWidget {
  const FavoriteButton(
      {super.key,
      required this.isFavorite,
      this.isLoadingFavorite = false,
      this.onPressed});
  final bool isFavorite;
  final bool isLoadingFavorite;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 5, top: 10),
      decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.4), shape: BoxShape.circle),
      child: IconButton(
          onPressed: onPressed,
          icon: Icon(
            isFavorite == false
                ? Icons.favorite_border
                : Icons.favorite_outlined,
            color: AppColors.white,
            size: 27,
          )),
    );
  }
}
