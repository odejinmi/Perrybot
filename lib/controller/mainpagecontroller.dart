import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class Mainpagecontroller extends GetxController {
  var storage = GetStorage();
  var page = 0.obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    page.value = storage.read("page") ?? 0;
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }
}
