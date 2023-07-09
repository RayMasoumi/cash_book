import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class VerificationCodeTextFieldController extends GetxController {
  TextEditingController? verificationCode;

  @override
  void onInit() {
    verificationCode = TextEditingController();

    super.onInit();
  }
}
