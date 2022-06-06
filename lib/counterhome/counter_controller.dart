import 'package:get/get.dart';

class CounterController extends GetxController {
  var a = 0.obs;
  increment() {
    a ++;
    update();
  }

  dedcrement() {
    a --;
    update();
  }
}