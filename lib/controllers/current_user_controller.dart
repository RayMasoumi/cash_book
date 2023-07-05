import 'package:get/get.dart';

import '../model/user.dart';

class CurrentUserController extends GetxController {
  Rx<User?> currentUser = null.obs;
}
