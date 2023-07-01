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

  User({
    required this.userId,
    required this.userName,
    required this.userPhoneNumber,
    required this.userEmail,
    this.userBooks = const [],
  });
}
