// * a method to check if the user has Logged in or needs to sign up:
import 'package:get_storage/get_storage.dart';

bool isLoggedIn() {
  return GetStorage().read('loggedIn') == 'true' ? false : true;
}
