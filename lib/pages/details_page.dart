import 'package:flutter/material.dart';
import 'package:flutter_vehicle_makes/controllers/details_page_controller.dart';
import 'package:get/get.dart';

import '../models/vehicle_make.dart';
import '../widgets/vehicle_make_card.dart';

class DetailsPage extends GetView<DetailsPageController> {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(controller.manufacturerName),
      ),
      body: Obx(
        () => !controller.listHasMakes.value
            ? const Center(child: Text('Nothing to display here'))
            : controller.isLoading.value
                ? const Center(child: Text('Loading makes...'))
                : Container(
                    margin: const EdgeInsets.only(top: 25),
                    child: ListView.builder(
                      itemCount: controller.vehicleMakeList.length,
                      itemBuilder: (BuildContext context, int index) {
                        VehicleMake vehicleMake =
                            controller.vehicleMakeList[index];

                        return VehicleMakeCard(vehicleMake: vehicleMake);
                      },
                    ),
                  ),
      ),
    );
  }
}
