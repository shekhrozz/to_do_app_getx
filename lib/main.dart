
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:to_do_app_getx/app.dart';
import 'package:to_do_app_getx/utils/app_setup/app_setup.dart';
/*
Created by BERDIYEV SHEKHROZ on 12:31:04 29.11.2022
© 2022 
*/
void main() async{
  await AppSetup.setup;
  runApp(const MyApp());
 // runApp(DevicePreview(enabled:! kReleaseMode,builder: (context) => MyApp(),));
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      splitScreenMode: true,
      designSize: const Size(390,844),
      builder:(context, child) => AppProvider(),);
  }
}
