import 'package:cash_book/controllers/current_user_controller.dart';
import 'package:cash_book/controllers/navigation_bar_controller.dart';
import 'package:cash_book/controllers/radio_button_controller.dart';
import 'package:cash_book/controllers/translate_controller.dart';
import 'package:cash_book/controllers/verification_controller.dart';
import 'package:get/get.dart';

class MyBindings implements Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => TranslateController());
    Get.lazyPut(() => NavigationBarController());
    Get.put(VerificationController());
    Get.lazyPut(() => RadioButtonController());
    Get.lazyPut(() => CurrentUserController());
  }
}
