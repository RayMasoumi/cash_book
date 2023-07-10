import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class AddEntryTextFieldController extends GetxController {
  TextEditingController? addEntryAmount;
  TextEditingController? addEntryDescription;

  @override
  void onInit() {
    addEntryAmount = TextEditingController();
    addEntryDescription = TextEditingController();

    super.onInit();
  }
}
