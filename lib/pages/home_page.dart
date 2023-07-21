import 'package:flutter/material.dart';
import 'package:flutter_vehicle_makes/controllers/home_page_controller.dart';
import 'package:get/get.dart';

import '../theme/app_theme.dart';
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
        () => controller.isLoading.value
            ? const LoadingShimmer(
                gradient: AppTheme.cardLinearGradient,
              )
            : controller.listHasError
                ? const Center(child: Text('Oops! Could not display the list'))
                : const ManufacturersListView(),
      ),
      // body: LoadingShimmer(),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: controller.loadMorePages, label: Text('Load More')),
    );
  }
}
