import 'package:get/get.dart';

class HomeController extends GetxController {
  int number = 0;

  void incrementNumber() {
    number++;
    update();
  }
}
