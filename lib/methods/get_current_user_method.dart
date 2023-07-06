// * get the logged in user(current user) information:
import 'package:get_storage/get_storage.dart';
import 'package:hive/hive.dart';

import '../constants/strings.dart';
import '../model/user.dart';

// * finds the currentUser using currentUserId (in getStorage) and returns it
// ! note that the returned user might be null
User? getCurrentUser() {
  String? cUserID = GetStorage().read(kCurrentUserIDKey);
  User? cUser;
  if (cUserID == null) {
    return null;
  } else {
    Hive.box<User>(kUserBoxName).values.forEach((element) {
      if (element.userId == cUserID) {
        cUser = element;
      }
    });
    return cUser;
  }
}
