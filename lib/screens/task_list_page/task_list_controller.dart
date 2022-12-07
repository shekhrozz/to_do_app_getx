
import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:to_do_app_getx/data/dataprovider/auth_data_provider.dart';
import 'package:to_do_app_getx/data/dataprovider/fire_data_provider.dart';
import 'package:to_do_app_getx/data/models/task.dart';
import 'package:to_do_app_getx/data/models/task_list_model.dart';
import 'package:to_do_app_getx/utils/app_routing/constants.dart';
import 'package:uuid/uuid.dart';

class TaskListController extends GetxController {
  final arguments=Get.arguments;
  late final TaskBaseModel _taskBase;
  late bool isButton=true;
  final focusNode=FocusNode();
  final TextEditingController taskController=TextEditingController();
  final _firstoreProvideer=Get.find<FireDataProvider>();
  final _firstoreProvider=Get.find<FireDataProvider>();
  final _fireAuth=Get.find<AuthDataProvider>();
  bool? _isComplated=false;
  final box=GetStorage();

  @override
  void onInit() {
    isButton=true;
    _taskBase=TaskBaseModel.fromJson(arguments['task_base']);
    update();
    super.onInit();
  }
 
    onButtonHide(bool value){
      isButton=value;
      update();
    }  
    onAddTaskPressed(){
      onButtonHide(false);
      Future.delayed(Duration.zero,(){});
    }

 changeComplated(bool isComplated){
  _isComplated=isComplated;
  update();
 }

 void createTask()async{
  try {
    if (taskController.text.isEmpty) return;
    final taskId=const Uuid().v1();
    final Task task =Task(
      id: taskId,
      userId:_fireAuth.auth.currentUser!.uid,
      task: taskController.text,
      isCompleted: _isComplated,
      isFavourite: false,
      publishedDate: DateTime.now(),
      taskListId: taskBase.id,
      taskListName: taskBase.name);
       final isSavedToDb=await _firstoreProvideer.createTask(
        task: task,
         collectionName:CollectionNames.generateSimpleTaskCollectionName(
          name: task.taskListName!,
           id: task.taskListId!));
           if (_isComplated!) {
             final isComplatedSaved=await _firstoreProvideer.createTask(
              task: task, collectionName:CollectionNames.complatedCollectionName);
              if (isComplatedSaved) {
              log(' task Complate');
              }
           }
           if (isSavedToDb) {
             Get.snackbar('${task.taskListName}',
            'task successfully created');
            createTask();
           }
      } catch (e) {
    log(e.toString());
  }
 }
 void cleartask(){
  _isComplated=false;
   taskController.clear();
   update();
 }
    bool get isComplated=>_isComplated!;
    TaskBaseModel get taskBase=> _taskBase;
}