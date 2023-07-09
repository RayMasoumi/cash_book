import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LoginTextFieldController extends GetxController {
  TextEditingController? loginPhoneNumber;

  @override
  void onInit() {
    loginPhoneNumber = TextEditingController();

    super.onInit();
  }
}
