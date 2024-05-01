import 'package:get/get.dart';

import '../modules/ayat/bindings/ayat_binding.dart';
import '../modules/ayat/views/ayat_view.dart';
import '../modules/data/bindings/data_binding.dart';
import '../modules/data/views/data_view.dart';
import '../modules/hal1/bindings/hal1_binding.dart';
import '../modules/hal1/views/hal1_view.dart';
import '../modules/hal2/bindings/hal2_binding.dart';
import '../modules/hal2/views/hal2_view.dart';
import '../modules/hal3/bindings/hal3_binding.dart';
import '../modules/hal3/views/hal3_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/profile/bindings/profile_binding.dart';
import '../modules/profile/views/profile_view.dart';
import '../modules/surat/bindings/surat_binding.dart';
import '../modules/surat/views/surat_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const initial = Routes.AYAT;
  // static const initial = Routes.SURAT;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
      transition: Transition.zoom,
      transitionDuration: const Duration(seconds: 1),
    ),
    GetPage(
      name: _Paths.DATA,
      page: () => const DataView(),
      binding: DataBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => const ProfileView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: _Paths.SURAT,
      page: () => const SuratView(),
      binding: SuratBinding(),
    ),
    GetPage(
      name: _Paths.HAL1,
      page: () => const Hal1View(),
      binding: Hal1Binding(),
    ),
    GetPage(
      name: _Paths.HAL2,
      page: () => const Hal2View(),
      binding: Hal2Binding(),
    ),
    GetPage(
      name: _Paths.HAL3,
      page: () => const Hal3View(),
      binding: Hal3Binding(),
    ),
    GetPage(
      name: _Paths.AYAT,
      page: () => const AyatView(),
      binding: AyatBinding(),
    ),
  ];
}
