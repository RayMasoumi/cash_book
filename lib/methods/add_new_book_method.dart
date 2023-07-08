import 'package:cash_book/constants/strings.dart';
import 'package:cash_book/controllers/book_controller.dart';
import 'package:cash_book/controllers/current_user_controller.dart';
import 'package:cash_book/controllers/radio_button_controller.dart';
import 'package:cash_book/controllers/text_field_controller.dart';
import 'package:cash_book/methods/get_current_user_index.dart';
import 'package:cash_book/model/book.dart';
import 'package:cash_book/model/user.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';

void addNewBookMethod() {
  var user = Get.find<CurrentUserController>().currentUser.value!;
  Book newBook = Book(
      bookId: user.userBooks.length.toString(),
      bookName: Get.find<TextFieldController>().addBookName!.text,
      privateBook: Get.find<RadioButtonController>().selectedValue.value == 0
          ? true
          : false,
      bookLastModified: DateTime.now().toString(),
      bookOwnerUserId: user.userId);
  // Get.find<BookController>
  Get.find<CurrentUserController>().currentUser.value = user;
}
