import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../controllers/home_page_controller.dart';
import '../models/vehicle_manufacturer.dart';

class ManufacturersListView extends StatelessWidget {
  const ManufacturersListView({
    super.key,
    required this.controller,
  });

  final HomePageController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: controller.viewManufacturersList.length,
            itemBuilder: (BuildContext context, int index) {
              VehicleManufacturer vehicleManufacturer =
                  controller.viewManufacturersList[index];
              return Card(
                child: Column(
                  children: [
                    Text(vehicleManufacturer.manufacturerCommonName ??
                        vehicleManufacturer.manufacturerName),
                    Text('${vehicleManufacturer.manufacturerID}'),
                  ],
                ),
              );
            },
          ),
        ),
        if (controller.isPageLoading.value)
          Center(
            child: CupertinoActivityIndicator(),
          ),
        if (!controller.listHasNextPage.value)
          Text('You have reached the end of the list')
      ],
    );
  }
}
