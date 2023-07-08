import 'package:cash_book/controllers/book_controller.dart';
import 'package:cash_book/controllers/entry_controller.dart';
import 'package:get/get.dart';

void getCurrentBookEntries() {
  Get.find<EntryController>().currentBookEntries.clear();
  for (var entry in Get.find<EntryController>().bookEntries) {
    if (entry.bookId == Get.find<BookController>().currentBook.value!.bookId) {
      Get.find<EntryController>().currentBookEntries.add(entry);
    }
  }
}
