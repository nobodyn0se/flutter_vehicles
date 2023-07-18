import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../controllers/home_page_controller.dart';
import '../models/vehicle_manufacturer.dart';
import 'manufacturer_card.dart';

class ManufacturersListView extends GetView<HomePageController> {
  const ManufacturersListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: controller.viewManufacturersList.length,
              itemBuilder: (BuildContext context, int index) {
                VehicleManufacturer vehicleManufacturer =
                    controller.viewManufacturersList[index];
                return ManufacturerCard(
                    vehicleManufacturer: vehicleManufacturer);
              },
            ),
          ),
          if (controller.isPageLoading.value)
            const Center(
              child: CupertinoActivityIndicator(),
            ),
          if (!controller.listHasNextPage.value)
            const Text('You have reached the end of the list')
        ],
      ),
    );
  }
}
