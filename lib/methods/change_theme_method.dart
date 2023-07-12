import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/theme_controller.dart';

void changeTheme(bool isDarkController) {
  Get.find<ThemeController>().isDark.value = isDarkController;
  // *change theme
  isDarkController
      ? Get.changeTheme(ThemeData.light())
      : Get.changeTheme(ThemeData.dark());
  // * save new theme value
  isDarkController = !isDarkController;
}
