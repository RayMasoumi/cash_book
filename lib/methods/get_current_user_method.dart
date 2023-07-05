// * get the logged in user(current user) information:
import 'package:hive/hive.dart';

import '../constants/strings.dart';
import '../model/user.dart';

User? getCurrentUser() {
  User? currentUser = Hive.box<User>(kUserBoxName).getAt(0);
  return currentUser;
}
