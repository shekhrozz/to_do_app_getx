
import 'package:get/get.dart';
import 'package:to_do_app_getx/screens/complated/complated_controller.dart';
import 'package:to_do_app_getx/screens/important/important_controller.dart';

class ComplatedBinding extends Bindings {
  @override
  void dependencies() {
   Get.lazyPut<ComplatedController>(() => ComplatedController());
   Get.lazyPut<ImportantController>(() => ImportantController());
  }
}