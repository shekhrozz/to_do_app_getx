
import 'package:get/get.dart';
import 'package:to_do_app_getx/screens/auth/profile/profile_view.dart';

import 'profile_controller.dart';
class  ProfileBinding extends Bindings  {
  @override
  void dependencies() {
    Get.lazyPut<ProfileController>(() =>ProfileController());
  }
}