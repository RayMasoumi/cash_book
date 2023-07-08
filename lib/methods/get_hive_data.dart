import 'package:cash_book/constants/strings.dart';
import 'package:cash_book/controllers/book_controller.dart';
import 'package:cash_book/controllers/current_user_controller.dart';
import 'package:cash_book/methods/get_current_user_index.dart';
import 'package:cash_book/model/book.dart';
import 'package:cash_book/model/user.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';

void getHiveData() {
  Get.find<CurrentUserController>().currentUser.value =
      Hive.box<User>(kUserBoxName).getAt(getCurrentUserIndex());

  Get.find<BookController>().userBooks =
      Hive.box<Book>(kBookBoxName).values.toList();
}
