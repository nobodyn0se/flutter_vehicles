import 'package:flutter/material.dart';
import 'package:flutter_vehicle_makes/constants/app_constants.dart';
import 'package:flutter_vehicle_makes/controllers/details_page_controller.dart';
import 'package:flutter_vehicle_makes/widgets/loader/loading_shimmer.dart';
import 'package:get/get.dart';

import '../models/vehicle_make.dart';
import '../widgets/error/error_view.dart';
import '../widgets/vehicle_details_card.dart';

class DetailsPage extends GetView<DetailsPageController> {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: Text(controller.manufacturerName),
      ),
      body: Obx(
        () => AnimatedSwitcher(
          duration: AppConstants.LOADING_ANIMATION_DURATION,
          child: controller.isLoading.value
              ? const LoadingShimmer(
                  itemExtent: 100,
                  itemCount: 3,
                )
              : !controller.listHasMakes.value
                  ? const ErrorView(parameterName: 'makes')
                  : Container(
                      margin: const EdgeInsets.only(top: 25),
                      child: ListView.builder(
                        itemCount: controller.vehicleMakeList.length,
                        itemBuilder: (BuildContext context, int index) {
                          VehicleMake vehicleMake =
                              controller.vehicleMakeList[index];

                          return VehicleDetailsCard(
                            color: Colors.lightGreen.shade100,
                            titleTextColor: Colors.lightGreen.shade900,
                            subtitleTextColor: Colors.lightGreen.shade700,
                            title: vehicleMake.makeName,
                            subtitle: vehicleMake.manufacturerName,

                            // Route to show models for a given make
                            onClick: () => Get.toNamed(
                                '/make/${vehicleMake.makeID}',
                                arguments: vehicleMake.makeName),
                          );
                        },
                      ),
                    ),
        ),
      ),
    );
  }
}
