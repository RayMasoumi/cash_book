import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController {
  TextEditingController? username;
  TextEditingController? phoneNumber;
  TextEditingController? email;

  @override
  void onInit() {
    username = TextEditingController();
    phoneNumber = TextEditingController();
    email = TextEditingController();
    super.onInit();
  }
}
