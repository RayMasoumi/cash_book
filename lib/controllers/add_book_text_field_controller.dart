import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class AddBookTextFieldController extends GetxController {
  TextEditingController? addBookName;

  @override
  void onInit() {
    addBookName = TextEditingController();

    super.onInit();
  }
}
