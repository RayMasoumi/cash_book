import 'book.dart';
import 'package:hive/hive.dart';

part 'user.g.dart';

@HiveType(typeId: 0)
class User {
  @HiveField(1)
  String userId;
  @HiveField(2)
  String userName;
  @HiveField(3)
  String userPhoneNumber;
  @HiveField(4)
  String userEmail;
  @HiveField(5)
  List<Book> userBooks;
  @HiveField(6)
  String? userCompany;
  @HiveField(7)
  String? userCompanyAddress;
  @HiveField(8)
  String? userCompanyCategory;
  @HiveField(9)
  String lastSyncDate;
  @HiveField(10)
  String userCreationDate;
  @HiveField(11)
  bool isDisabled;
  // ? a list of user's all entries

  User({
    required this.userId,
    required this.userName,
    required this.userPhoneNumber,
    required this.userEmail,
    required this.lastSyncDate,
    required this.userCreationDate,
    this.userBooks = const [],
    this.isDisabled = false,
  });
}
