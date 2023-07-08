import 'package:cash_book/constants/enums.dart';
import 'package:cash_book/constants/strings.dart';
import 'package:cash_book/controllers/drop_down_controller.dart';
import 'package:cash_book/controllers/radio_button_controller.dart';
import 'package:cash_book/methods/get_current_book_entries_method.dart';
import 'package:get/get.dart';
import 'package:cash_book/model/entry.dart';
import 'package:hive/hive.dart';

import '../controllers/add_entry_text_field_conrtoller.dart';
import '../controllers/book_controller.dart';
import '../controllers/entry_controller.dart';

void addNewEntry() {
  var currentBook = Get.find<BookController>().currentBook.value;

  // * make a new entry:
  Entry newEntry = Entry(
    entryId: Get.find<EntryController>().currentBookEntries.length.toString(),
    bookId: currentBook!.bookId,
    entryAmount: double.parse(
        Get.find<AddEntryTextFieldController>().addEntryAmount!.text),
    entryDate: DateTime.now().toString(),
    entryTime: DateTime.now().toString(),
    entryLastModified: DateTime.now().toString(),
    entryType: Get.find<EntryController>().isCashIn.value
        ? EntryType.cashIn
        : EntryType.cashOut,
    entryUserId: currentBook.bookOwnerUserId,
    entryDescription:
        Get.find<AddEntryTextFieldController>().addEntryDescription!.text,
    paymentMethod:
        Get.find<RadioButtonController>().selectedPaymentMethod.value,
    category: Get.find<DropDownController>().pickedCategory.value,
  );
  Get.find<EntryController>().bookEntries.add(newEntry);
  // * update current book entry:
  getCurrentBookEntries();
  // * adding the entry to hive:
  Hive.box<Entry>(kEntryBoxName).add(newEntry);
}
