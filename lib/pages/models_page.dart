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
      body: Center(
        child: Text('List of models'),
      ),
    );
  }
}
