import 'package:cash_book/constants/enums.dart';

class Entry {
  String entryId;
  String bookId;
  int amount;
  String description;
  String entryDate;
  String entryTime;
  String entryLastModified;
  EntryType entryType;
  PaymentMethod? paymentMethod;
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
