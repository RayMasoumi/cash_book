import 'package:cash_book/constants/enums.dart';

class Entry {
  String entryId;
  String bookId;
  int entryAmount;
  String entryDescription;
  String entryDate;
  String entryTime;
  String entryLastModified;
  EntryType entryType;
  PaymentMethod? entryPaymentMethod;
  Category? entryCategory;

  Entry(
      {required this.entryId,
      required this.bookId,
      required this.entryAmount,
      this.entryDescription = '',
      required this.entryDate,
      required this.entryTime,
      required this.entryLastModified,
      required this.entryType,
      this.entryPaymentMethod,
      this.entryCategory});
//TODO image
}
