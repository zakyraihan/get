import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../controllers/surat_controller.dart';

class SuratView extends GetView<SuratController> {
  const SuratView({super.key});
  @override
  Widget build(BuildContext context) {
    final ctrl = Get.put(SuratController());

    return Scaffold(
      appBar: AppBar(
        title: const Text('SuratView'),
        centerTitle: true,
        leading: TextButton(
          onPressed: () {
            // AyatController().getData();
          },
          child: const Text('oke'),
        ),
      ),
      body: Obx(
        () => ctrl.status.value
            ? ListView(
                children: List.generate(ctrl.data.length, (index) {
                  return ListTile(
                    onTap: () => Get.toNamed(Routes.AYAT,
                        arguments: ctrl.data[index].nomor),
                    leading: CircleAvatar(
                      child: Text(ctrl.data[index].nomor.toString()),
                    ),
                    title: Text(ctrl.data[index].namaLatin),
                    subtitle: Text(
                        '${ctrl.data[index].tempatTurun} | ${ctrl.data[index].jumlahAyat} Ayat'),
                    trailing: Text(
                      ctrl.data[index].nama,
                      style: const TextStyle(fontSize: 20),
                    ),
                  );
                }),
              )
            : const CircularProgressIndicator(),
      ),
    );
  }
}
