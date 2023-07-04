import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class TranslateController extends GetxController {
  void changeLanguage(String language) {
    var locale = Locale(language);
    Get.updateLocale(locale);
    GetStorage().write('language', language);
  }
}
