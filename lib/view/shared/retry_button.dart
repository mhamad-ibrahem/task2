import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RetryButton extends StatelessWidget {
  final VoidCallback onTap;
  const RetryButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Something went wrong'.tr,
            style: Theme.of(context).textTheme.displaySmall,
          ),
          TextButton(
              onPressed: onTap,
              child: Text(
                'Retry'.tr,
              )),
        ],
      ),
    );
  }
}
