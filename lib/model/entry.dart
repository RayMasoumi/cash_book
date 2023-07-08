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
  double entryAmount;
  @HiveField(4)
  String? entryDescription;
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
  @HiveField(11)
  String entryUserId;
  @HiveField(12)
  String? entryImagePath;
  @HiveField(13)
  bool activeEntry;

  Entry({
    required this.entryId,
    required this.bookId,
    required this.entryAmount,
    required this.entryDate,
    required this.entryTime,
    required this.entryLastModified,
    required this.entryType,
    required this.entryUserId,
    this.paymentMethod,
    this.category,
    this.entryDescription,
    this.activeEntry = true,
  });
//TODO image
}
