
import 'package:get/get.dart';
import 'package:to_do_app_getx/screens/search/search_controller.dart';

class SearchBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SearchController>(() =>SearchController());
      }
}