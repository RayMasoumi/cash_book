import 'package:get/get.dart';

class ThemeController extends GetxController {
  var isDark = Get.isDarkMode.obs;
  void toggle() {
    isDark.value = !isDark.value;
  }
}
