// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// import '../controllers/ayat_controller.dart';

// class AyatView extends GetView<AyatController> {
//   const AyatView({super.key});

//   @override
//   Widget build(BuildContext context) {
//     Get.put(AyatController()).getData(Get.arguments);

//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('AyatViews'),
//         centerTitle: true,
//       ),
//       body: Obx(
//         () => controller.status.value
//             ? ListView(
//                 children: List.generate(controller.data.length, (index) {
//                   final quran = controller.data[index];
//                   return ListTile(
//                     title: Text(
//                       '${quran.teksArab} | ${quran.nomorAyat}',
//                       textAlign: TextAlign.right,
//                       style: const TextStyle(fontSize: 20),
//                     ),
//                     // trailing: CircleAvatar(
//                     //   child: Text(quran.nomorAyat.toString()),
//                     // ),
//                     subtitle: GestureDetector(
//                       onTap: () {
//                         controller.isExpanded();
//                       },
//                       child: Text(
//                         quran.teksIndonesia,
//                         maxLines: controller.isExpand.value ? 2 : 100,
//                         textAlign: TextAlign.left,
//                       ),
//                     ),
//                   );
//                 }),
//               )
//             : const Center(
//                 child: CircularProgressIndicator(),
//               ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan_get/app/modules/surat/controllers/surat_controller.dart';

import '../controllers/ayat_controller.dart';

class AyatView extends GetView<AyatController> {
  const AyatView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // final controller = Get.put(AyatController());
    final ctrl = Get.put(SuratController());

    return Scaffold(
      appBar: AppBar(
        title: const Text('AyatViews'),
        centerTitle: true,
      ),
      body: FutureBuilder(
        future: ctrl.getData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return PageView.builder(
              itemCount: ctrl.data.length,
              itemBuilder: (context, index) {
                return AyatTabView(suratId: index + 1);
              },
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}

class AyatTabView extends StatelessWidget {
  final int suratId;

  const AyatTabView({super.key, required this.suratId});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(AyatController());
    controller.getData(suratId);

    return Obx(
      () => controller.status.value
          ? ListView.builder(
              itemCount: controller.data.length,
              itemBuilder: (context, index) {
                final quran = controller.data[index];
                return ListTile(
                  contentPadding: const EdgeInsets.all(10),
                  title: Text(
                    '${quran.teksArab} | ${quran.nomorAyat}',
                    textAlign: TextAlign.right,
                    style: const TextStyle(fontSize: 20),
                  ),
                  subtitle: GestureDetector(
                    onTap: () {
                      controller.isExpanded();
                    },
                    child: Text(
                      quran.teksIndonesia,
                      maxLines: controller.isExpand.value ? 2 : 100,
                      textAlign: TextAlign.left,
                    ),
                  ),
                );
              },
            )
          : const Center(
              child: CircularProgressIndicator(),
            ),
    );
  }
}
