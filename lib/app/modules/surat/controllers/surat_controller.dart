import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../model/list_surat.dart';

class SuratController extends GetxController {
  //TODO: Implement SuratController

  final count = 0.obs;
  List<ListSurat> data = [];
  RxBool status = false.obs;

  getData() async {
    String url = 'https://equran.id/api/v2/surat';
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      data = suratFromJson(response.body.toString()).data;
      status.value = true;
    } else {
      throw Exception();
    }
  }

  @override
  void onInit() {
    getData();
    super.onInit();
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }

  void increment() => count.value++;
}
