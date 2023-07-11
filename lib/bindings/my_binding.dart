import 'package:cash_book/controllers/add_entry_text_field_conrtoller.dart';
import 'package:cash_book/controllers/book_controller.dart';
import 'package:cash_book/controllers/current_user_controller.dart';
import 'package:cash_book/controllers/entry_controller.dart';
import 'package:cash_book/controllers/log_in_text_field_controller.dart';
import 'package:cash_book/controllers/navigation_bar_controller.dart';
import 'package:cash_book/controllers/radio_button_controller.dart';
import 'package:cash_book/controllers/sign_up_controller.dart';
import 'package:cash_book/controllers/temp_user_controller.dart';
import 'package:cash_book/controllers/add_book_text_field_controller.dart';
import 'package:cash_book/controllers/theme_controller.dart';
import 'package:cash_book/controllers/translate_controller.dart';
import 'package:cash_book/controllers/verification_code_text_field_controller.dart';
import 'package:cash_book/controllers/verification_controller.dart';
import 'package:get/get.dart';

import '../controllers/drop_down_controller.dart';

class MyBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TranslateController());
    Get.lazyPut(() => NavigationBarController());
    Get.put(VerificationController());
    Get.lazyPut(() => AddBookTextFieldController());
    Get.lazyPut(() => VerificationCodeTextFieldController());
    Get.lazyPut(() => LoginTextFieldController());
    Get.put(CurrentUserController());
    Get.put(AddEntryTextFieldController());
    Get.put(RadioButtonController());
    Get.put(BookController());
    Get.put(EntryController());
    Get.put(DropDownController());
    Get.lazyPut(() => TempUserController());
    Get.lazyPut(() => SignUpController());
    Get.put(ThemeController());
  }
}
