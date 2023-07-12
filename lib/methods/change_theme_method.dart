import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pelaicons/pelaicons.dart';
import '../controllers/theme_controller.dart';

void changeTheme(bool isDarkController) {
  // *change theme
  isDarkController
      ? Get.changeTheme(ThemeData.light())
      : Get.changeTheme(ThemeData.dark());
  // * save new theme value
  isDarkController = !isDarkController;
  Get.find<ThemeController>().isDark.value = isDarkController;
}

Icon changeThemeIcon(bool isDarkController) {
  return isDarkController
      ? const Icon(Pelaicons.sun_light_outline)
      : const Icon(Pelaicons.moon_1_light_outline);
}
