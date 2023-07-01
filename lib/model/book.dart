import 'package:cash_book/model/user.dart';
import 'package:cash_book/model/entry.dart';

class Book {
  String bookId;
  String bookName;
  List<User> bookMembers;
  List<Entry> bookRecords;

  Book(
      {required this.bookId,
      required this.bookName,
      this.bookMembers = const [],
      this.bookRecords = const []});
}
