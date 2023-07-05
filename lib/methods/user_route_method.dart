import 'package:cash_book/constants/strings.dart';
import 'package:cash_book/methods/get_current_user_method.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:hive/hive.dart';
import '../model/user.dart';
import 'is_logged_in_method.dart';
import 'new_current_user_method.dart';

// * checks to see which route should the user be led to:
String userRoute() {
  User? tempUser = getCurrentUser();
  if (tempUser != null) {
    // * if the user is logged in send them to home screen and set them as currentUser
    if (isLoggedIn()) {
      newCurrentUser(user: tempUser);
      return kHomeScreenRoute;
    } else {
      // * if user has not logged in send them to the introduction screen so they can sign up/log in
      Hive.box<User>(kUserBoxName).clear();
      return kIntroductionScreenRoute;
    }
  } else {
    // * if there was no info about the use in the db and it was null, log them out and send them back to intro screen
    GetStorage().read('loggedIn') == 'false';
    Hive.box<User>(kUserBoxName).clear();
    return kIntroductionScreenRoute;
  }
}
