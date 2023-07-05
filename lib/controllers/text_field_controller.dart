import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class TextFieldController extends GetxController {
  TextEditingController? addBookName;

  @override
  void onInit() {
    addBookName = TextEditingController();

    super.onInit();
  }
}
