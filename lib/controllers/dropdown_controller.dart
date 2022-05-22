import 'package:get/get.dart';

class DropDownController extends GetxController {
  final RxString _value = "".obs;
  get value => _value.value;

  DropDownController(String val) {
    _value.value = val;
  }

  set setval(String val) {
    _value.value = val;
  }
}
