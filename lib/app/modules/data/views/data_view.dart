import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan_get/app/modules/surat/views/surat_view.dart';

import '../controllers/data_controller.dart';

class DataView extends GetView<DataController> {
  const DataView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DataView'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
              controller: controller.angka1,
              decoration: const InputDecoration(
                enabledBorder: OutlineInputBorder(),
                label: Text('angka 1'),
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: controller.angka2,
              onChanged: (value) {
                controller.hitung(value);
              },
              decoration: const InputDecoration(
                enabledBorder: OutlineInputBorder(),
                label: Text('angka 2'),
              ),
            ),
            Obx(() => Text(controller.hasil.toString()))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // controller.hitung();
          Get.to(const SuratView());
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
