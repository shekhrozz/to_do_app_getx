

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:to_do_app_getx/screens/complated/complated_view.dart';
import 'package:to_do_app_getx/screens/task_list_page/task_list_controller.dart';
import 'package:to_do_app_getx/screens/task_list_page/task_list_view/task_list_view.dart';
import 'package:to_do_app_getx/screens/widgets/custom_add_button_widget.dart';
import 'package:to_do_app_getx/screens/widgets/custom_slider_widget.dart';
import 'package:to_do_app_getx/screens/widgets/custom_task_field.dart';

class TaskListPage extends GetView<TaskListController> {
  const TaskListPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        fit: StackFit.expand,
        children: [
          DefaultTabController(
            length: 2,
            initialIndex: 0,
             child:Scaffold(
              backgroundColor: Theme.of(context).primaryColor,
              appBar: AppBar(
                title: GetBuilder(
                 init: controller,
                  builder:(_) {
              return Text(controller.taskBase.name??'Task List');
                  },),
                elevation: .0,
                backgroundColor: Colors.transparent,

                bottom: const TabBar(tabs: [
                  Tab(
                    text: 'To Do',),
                  Tab(
                    text: 'Complated')
                ]),
              ),
              body: TabBarView(
                physics: NeverScrollableScrollPhysics(),
                children: [
                 const TaskListView(),

                 GetBuilder(
                  init: controller,
                  builder:(_) {
                    return ComplatedView(
                      taskBase: controller.taskBase,
                    );
                  },
                  )
              ]
              )
             )
            ),
            Positioned(
              bottom: .0,
              left: .0,
              right: .0,
              child:GetBuilder<TaskListController>(
                init: controller,
                builder:(_) {
                  if(controller.isButton){
                    return Padding(padding: EdgeInsets.symmetric(
                      horizontal: 20.w,
                      vertical: 20.h,
                    ),
                    child: CustomAddButton(onTap:() {
                      controller.onButtonHide(false);
                      FocusScope.of(context).requestFocus(controller.focusNode);
                    },
                    ),
                    );
                  }
                  return CustomTaskField(
                    onSubmitted:(value) {
                      controller.onButtonHide(true);
                    },
                     onChangeCheck:(value) => controller.changeComplated(value!), 
                     focusNode: controller.focusNode,
                      controller: controller.taskController,
                       isComplated: controller.isComplated);
              },
             )
            )
        ],
      ),
    );
  }
}