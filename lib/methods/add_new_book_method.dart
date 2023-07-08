import 'package:cash_book/constants/strings.dart';
import 'package:cash_book/controllers/book_controller.dart';
import 'package:cash_book/controllers/current_user_controller.dart';
import 'package:cash_book/controllers/radio_button_controller.dart';
import 'package:cash_book/controllers/text_field_controller.dart';
import 'package:cash_book/model/book.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';

void addNewBookMethod() {
  var user = Get.find<CurrentUserController>().currentUser.value!;
  var userBooks = Get.find<BookController>().userBooks;
  Book newBook = Book(
      bookId: userBooks.length.toString(),
      bookName: Get.find<TextFieldController>().addBookName!.text,
      privateBook: Get.find<RadioButtonController>().selectedValue.value == 0
          ? true
          : false,
      bookLastModified: DateTime.now().toString(),
      bookOwnerUserId: user.userId);
  Get.find<BookController>().userBooks.add(newBook);
  Hive.box<Book>(kBookBoxName).add(newBook);
}
