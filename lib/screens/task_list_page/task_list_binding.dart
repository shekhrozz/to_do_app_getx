
import 'package:get/get.dart';
import 'package:to_do_app_getx/screens/complated/complated_controller.dart';
import 'package:to_do_app_getx/screens/task_list_page/task_list_controller.dart';
import 'package:to_do_app_getx/screens/task_list_page/task_list_view/task_list_view_controller.dart';

class TaskListBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TaskListController>(() =>TaskListController());
    Get.lazyPut<TaskListViewController>(() => TaskListViewController());
    Get.lazyPut<ComplatedController>(() =>ComplatedController());
  }
}