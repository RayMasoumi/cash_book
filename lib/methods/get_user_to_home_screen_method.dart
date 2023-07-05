import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:hive/hive.dart';
import '../constants/strings.dart';
import '../model/user.dart';
import 'new_current_user_method.dart';

void getUserToHomeScreen(User currentUser) {
  // * add user to controller
  newCurrentUser(user: currentUser);
  // * add user to hive
  Hive.box<User>(kUserBoxName).clear();
  Hive.box<User>(kUserBoxName).add(currentUser);
  // * set logged in to true
  GetStorage().write(kIsLoggedIn, 'true');
  // * go to home screen
  Get.offAllNamed(kHomeScreenRoute);
}

/**
 ** gets user to home screen
 */
