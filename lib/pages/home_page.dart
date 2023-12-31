import 'package:flutter/material.dart';
import 'package:flutter_vehicle_makes/controllers/home_page_controller.dart';
import 'package:flutter_vehicle_makes/widgets/error/error_view.dart';
import 'package:get/get.dart';

import '../constants/app_constants.dart';
import '../widgets/loader/loading_shimmer.dart';
import '../widgets/manufacturers_list_view.dart';

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
        () => AnimatedSwitcher(
          duration: AppConstants.LOADING_ANIMATION_DURATION,
          child: controller.isLoading.value
              ? const LoadingShimmer()
              : controller.listHasError
                  ? const ErrorView(parameterName: 'manufacturers')
                  : const ManufacturersListView(),
        ),
      ),
      // body: LoadingShimmer(),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: controller.loadMorePages, label: Text('Load More')),
    );
  }
}
