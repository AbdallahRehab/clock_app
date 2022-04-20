

import 'package:clock_app/controller/HomeController.dart';
import 'package:get/get.dart';

class MyBinding extends Bindings{
  @override
  void dependencies() {
    Get.put(HomeController());
  }

}