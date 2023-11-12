import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task/core/api/status_request.dart';
import 'package:task/features/home/controller/home_controller.dart';
import 'package:task/view/shared/loading_widget.dart';
import 'package:task/view/shared/retry_button.dart';

import '../widget/home_hotel_card.dart';
import '../widget/home_top_container.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<HomeController>(
        builder: (controller) => controller.statusRequest ==
                StatusRequest.loading
            ? const LoadingWidget()
            : controller.statusRequest == StatusRequest.failure
                ? RetryButton(onTap: () {
                    controller.getData();
                  })
                : Column(
                    children: [
                      const HomeTopContainer(),
                      Expanded(
                        child: SingleChildScrollView(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Column(
                            children: [
                              ListView.builder(
                                shrinkWrap: true,
                                physics: const NeverScrollableScrollPhysics(),
                                itemCount: controller.hotelsList.length,
                                itemBuilder: (context, index) {
                                  return HomeHotelCard(
                                      hotelModel: controller.hotelsList[index]);
                                },
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
      ),
    );
  }
}
