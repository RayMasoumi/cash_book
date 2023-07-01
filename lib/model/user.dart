import 'book.dart';

class User {
  String userId;
  String userName;
  String userPhoneNumber;
  String userEmail;
  List<Book> userBooks;

  User({
    required this.userId,
    required this.userName,
    required this.userPhoneNumber,
    required this.userEmail,
    this.userBooks = const [],
  });
}
