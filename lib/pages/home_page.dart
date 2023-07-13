import 'package:flutter/material.dart';
import 'package:flutter_vehicle_makes/controllers/home_page_controller.dart';
import 'package:flutter_vehicle_makes/models/vehicle_manufacturer.dart';
import 'package:get/get.dart';

class HomePage extends GetView<HomePageController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.home),
        title: const Text('Vehicle Manufacturers'),
      ),
      body: Obx(
        () => controller.isLoading.value
            ? Center(
                child: Text('Loading...'),
              )
            : controller.manufacturersList.isEmpty
                ? Center(child: Text('Oops! Could not display the list'))
                : Center(
                    child: ListView.builder(
                      itemCount: controller.manufacturersList.length,
                      itemBuilder: (BuildContext context, int index) {
                        VehicleManufacturer vehicleManufacturer =
                            controller.manufacturersList[index];
                        return Card(
                          child: Column(
                            children: [
                              Text(vehicleManufacturer.manufacturerCommonName ??
                                  vehicleManufacturer.manufacturerName),
                              Text('${vehicleManufacturer.manufacturerID}')
                            ],
                          ),
                        );
                      },
                    ),
                  ),
      ),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: controller.loadMorePages, label: Text('Load More')),
    );
  }
}
