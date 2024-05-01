import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../controllers/hal1_controller.dart';

class Hal1View extends GetView<Hal1Controller> {
  const Hal1View({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hal1View'),
        centerTitle: true,
      ),
      body: Center(
        child: Wrap(
          spacing: 20,
          children: [
            ElevatedButton(
              onPressed: () => Get.back(),
              child: const Text('Back To Home'),
            ),
            ElevatedButton(
              onPressed: () async {
                String result =
                    await Get.toNamed(Routes.HAL2, arguments: 'belajar getx');
                print(result);
              },
              child: const Text('Hal 2'),
            ),
          ],
        ),
      ),
    );
  }
}
