import 'package:get/get.dart';

import '../model/user.dart';

class CurrentUserController extends GetxController {
  var currentUser = Rx<User?>(null);
}
