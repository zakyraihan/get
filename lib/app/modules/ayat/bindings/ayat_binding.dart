import 'package:get/get.dart';

import '../controllers/ayat_controller.dart';

class AyatBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AyatController>(
      () => AyatController(),
    );
  }
}
