import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan_get/app/routes/app_pages.dart';

import '../controllers/hal2_controller.dart';

class Hal2View extends GetView<Hal2Controller> {
  const Hal2View({super.key});
  @override
  Widget build(BuildContext context) {
    print(Get.arguments);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hal2View'),
        centerTitle: true,
      ),
      body: Center(
        child: Wrap(
          spacing: 20,
          children: [
            ElevatedButton(
              onPressed: () => Get.back(result: 'belajar navigation getx'),
              child: const Text('Back To Hal 1'),
            ),
            ElevatedButton(
              onPressed: () => Get.toNamed(Routes.HAL3),
              child: const Text('Hal 3'),
            ),
            Text(Get.arguments)
          ],
        ),
      ),
    );
  }
}
