
import 'package:get/get.dart';
import 'package:to_do_app_getx/data/dataprovider/auth_data_provider.dart';
import 'package:to_do_app_getx/data/dataprovider/fire_data_provider.dart';
import 'package:to_do_app_getx/data/repositories/auth_data_repository.dart';
import 'package:to_do_app_getx/data/repositories/fire_data_repository.dart';

class GetLocator {
static Future<void>initServices()async{

  
  Get.lazyPut<AuthDataProvider>(() => AuthDataProvider());
    Get.lazyPut<AuthDataRepository>(() => AuthDataRepository());
    Get.lazyPut<FireDataProvider>(() =>   FireDataProvider());
    Get.lazyPut<FireDataRepository>(() =>FireDataRepository());
    
}
}