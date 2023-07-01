import 'package:cash_book/model/user.dart';
import 'package:cash_book/model/entry.dart';
import 'package:hive/hive.dart';

part 'book.g.dart';

@HiveType(typeId: 2)
class Book {
  @HiveField(1)
  String bookId;
  @HiveField(2)
  String bookName;
  @HiveField(3)
  List<User> bookMembers;
  @HiveField(4)
  List<Entry> bookRecords;

  Book(
      {required this.bookId,
      required this.bookName,
      this.bookMembers = const [],
      this.bookRecords = const []});
}
