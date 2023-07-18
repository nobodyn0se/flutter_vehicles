import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/models_page_controller.dart';

class ModelsPage extends GetView<ModelsPageController> {
  const ModelsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(controller.makeName),
      ),
      body: controller.isLoading.value
          ? Center(child: CupertinoActivityIndicator())
          : Center(child: Text('Fetched models for this make')),
    );
  }
}
