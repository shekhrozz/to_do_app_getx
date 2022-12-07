import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:to_do_app_getx/screens/complated/complated_controller.dart';
import 'package:to_do_app_getx/screens/complated/complated_view.dart';

class ComplatedPage extends GetView<ComplatedController> {
  const ComplatedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar:AppBar(
        title: const Text('Complated'),
        elevation: .0,
        centerTitle: false,
        backgroundColor: Colors.transparent,
      ),
      body: const ComplatedView(),
    );
  }
}