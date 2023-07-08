import 'package:cash_book/constants/strings.dart';
import 'package:cash_book/controllers/book_controller.dart';
import 'package:cash_book/controllers/current_user_controller.dart';
import 'package:cash_book/controllers/entry_controller.dart';
import 'package:cash_book/methods/get_current_user_index.dart';
import 'package:cash_book/model/book.dart';
import 'package:cash_book/model/entry.dart';
import 'package:cash_book/model/user.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';

void getHiveData() {
  if (getCurrentUserIndex() != -1) {
    Get.find<CurrentUserController>().currentUser.value =
        Hive.box<User>(kUserBoxName).getAt(getCurrentUserIndex());
  }

  List<Book> books = Hive.box<Book>(kBookBoxName).values.toList();
  Get.find<BookController>().userBooks.assignAll(books);
  List<Entry> entries = Hive.box<Entry>(kEntryBoxName).values.toList();
  Get.find<EntryController>().bookEntries.assignAll(entries);
}
