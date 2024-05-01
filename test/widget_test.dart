import 'package:flutter_test/flutter_test.dart';
import 'package:latihan_get/app/modules/surat/controllers/surat_controller.dart';

void main() {
  test('get list', () async{
    final SuratController suratController = SuratController();
    var response =await suratController.getData();
    print(response);
  });
}
