import 'package:cash_book/constants/enums.dart';
import 'package:hive/hive.dart';

part 'entry.g.dart';

@HiveType(typeId: 3)
class Entry {
  @HiveField(1)
  String entryId;
  @HiveField(2)
  String bookId;
  @HiveField(3)
  int amount;
  @HiveField(4)
  String description;
  @HiveField(5)
  String entryDate;
  @HiveField(6)
  String entryTime;
  @HiveField(7)
  String entryLastModified;
  @HiveField(8)
  EntryType entryType;
  @HiveField(9)
  PaymentMethod? paymentMethod;
  @HiveField(10)
  Category? category;

  Entry(
      {required this.entryId,
      required this.bookId,
      required this.amount,
      this.description = '',
      required this.entryDate,
      required this.entryTime,
      required this.entryLastModified,
      required this.entryType,
      this.paymentMethod,
      this.category});
//TODO image
}
