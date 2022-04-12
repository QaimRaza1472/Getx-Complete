///  ------------------    Simple State Management      -------------------------
///
/// -------------------    GetBuilder<Any Controller>   --------------------------

import 'package:get/get.dart';

class SimpleController extends GetxController {
  var count = 0;
  void increment() async {
    await Future.delayed( Duration(seconds: 0));
    this.count++;
    update(['Hello']);
  }

  @override
  void onInit() {
    print("Init Called-----------");
    super.onInit();
    increment();

  }


  @override
  void onClose() {
    print("Task Closed-----------");
    increment();
    super.onClose();
  }
}
