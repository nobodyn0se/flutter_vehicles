import 'package:flutter/material.dart';
import 'package:flutter_vehicle_makes/controllers/details_page_controller.dart';
import 'package:get/get.dart';

class DetailsPage extends GetView<DetailsPageController> {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(controller.manufacturerName),
      ),
      body: const Center(
        child: Text('Details Page'),
      ),
    );
  }
}
