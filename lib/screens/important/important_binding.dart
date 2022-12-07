import 'package:get/get.dart';
import 'package:to_do_app_getx/screens/complated/complated_controller.dart';
import 'package:to_do_app_getx/screens/important/important_controller.dart';
class ImportantBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ImportantController>(() => ImportantController());
      Get.lazyPut<ComplatedController>(() => ComplatedController());
  }
}