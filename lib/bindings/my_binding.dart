import 'package:cash_book/controllers/add_entry_text_field_conrtoller.dart';
import 'package:cash_book/controllers/current_user_controller.dart';
import 'package:cash_book/controllers/navigation_bar_controller.dart';
import 'package:cash_book/controllers/radio_button_controller.dart';
import 'package:cash_book/controllers/text_field_controller.dart';
import 'package:cash_book/controllers/translate_controller.dart';
import 'package:cash_book/controllers/verification_controller.dart';
import 'package:get/get.dart';

class MyBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TranslateController());
    Get.lazyPut(() => NavigationBarController());
    Get.put(VerificationController());
    Get.lazyPut(() => RadioButtonController());
    Get.lazyPut(() => TextFieldController());
    Get.put(CurrentUserController());
    Get.lazyPut(() => TextFieldController());
    Get.put(AddEntryTextFieldController());
    Get.put(RadioButtonController());
  }
}
