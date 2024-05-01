import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan_get/app/routes/app_pages.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
            // onPressed: () => Get.to(
            //       () => const Hal1View(),
            //       transition: Transition.upToDown,
            //       duration: const Duration(seconds: 1),
            //     ),
            onPressed: () => Get.toNamed(Routes.HAL1),
            child: const Text('halaman 1')),
      ),
    );
  }
}
