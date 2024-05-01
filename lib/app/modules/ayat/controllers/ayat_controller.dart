import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:latihan_get/app/modules/ayat/model/ayat_model.dart';

class AyatController extends GetxController {
  final count = 0.obs;
  var data = [];
  RxBool status = false.obs;
  RxBool isExpand = true.obs;

  getData(int id) async {
    String url = 'https://equran.id/api/v2/surat/$id';
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      data = alquranDetailFromJson(response.body.toString()).data.ayat;
      status.value = true;
    } else {
      throw Exception();
    }
  }

  @override
  void onInit() {
    // getData('');
    super.onInit();
  }

  void isExpanded() {
    isExpand.value = !isExpand.value;
  }
}
