import 'package:get/get.dart';

class Controller extends GetxController {
  var value = false;

  change(val) {
    value = val;
    update();
  }
}
