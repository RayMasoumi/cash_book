import 'package:cash_book/constants/enums.dart';
import 'package:cash_book/model/user.dart';
import 'package:cash_book/model/entry.dart';
import 'package:hive/hive.dart';
part 'book.g.dart';

@HiveType(typeId: 1)
class Book {
  @HiveField(1)
  String bookId;
  @HiveField(2)
  String bookName;
  @HiveField(3)
  List<User> bookMembers;
  @HiveField(4)
  String bookOwnerUserId;
  @HiveField(5)
  bool privateBook;
  @HiveField(6)
  bool activeBook;
  @HiveField(7)
  double bookBalance =
      0; //TODO: a function for calculating balance from bookRecords
  @HiveField(8)
  DateTime bookCreationDate = DateTime
      .now(); // ! just a default, should be modified later into jalali and ...
  @HiveField(9)
  String bookLastModified;
  @HiveField(10)
  List<Entry> bookRecords;

  Book({
    required this.bookId,
    required this.bookName,
    required this.privateBook,
    required this.bookLastModified,
    required this.bookOwnerUserId,
    this.bookMembers = const [],
    this.activeBook = true,
    this.bookRecords = const [],
  });

  double cashInBalance() {
    double cashInAmount = 0;
    for (Entry entry in bookRecords) {
      if (entry.entryType == EntryType.cashIn) {
        cashInAmount += entry.entryAmount;
      }
    }
    return cashInAmount;
  }

  double cashOutBalance() {
    double cashOutAmount = 0;
    for (Entry entry in bookRecords) {
      if (entry.entryType == EntryType.cashOut) {
        cashOutAmount += entry.entryAmount;
      }
    }
    return cashOutAmount;
  }

  double overAllBalance() {
    bookBalance = cashInBalance() - cashOutBalance();
    return bookBalance;
  }
}
