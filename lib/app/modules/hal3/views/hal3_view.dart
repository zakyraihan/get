import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan_get/app/routes/app_pages.dart';

import '../controllers/hal3_controller.dart';

class Hal3View extends GetView<Hal3Controller> {
  const Hal3View({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hal3View'),
        centerTitle: true,
      ),
      body: Center(
        child: Wrap(
          spacing: 20,
          children: [
            ElevatedButton(
              onPressed: () => Get.back(),
              child: const Text('Back To hal 2'),
            ),
            ElevatedButton(
              onPressed: () => Get.offAllNamed(Routes.HOME),
              child: const Text('Back To Home'),
            ),
          ],
        ),
      ),
    );
  }
}
