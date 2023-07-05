import 'package:cash_book/controllers/current_user_controller.dart';
import 'package:cash_book/model/user.dart';
import 'package:get/get.dart';

// * Used on submit button for loggingIn/signingUp and can be used on main
// * gets current user info and adds them to controller

void newCurrentUser({required User user}) {
  Get.find<CurrentUserController>().currentUser.value = user;
}
