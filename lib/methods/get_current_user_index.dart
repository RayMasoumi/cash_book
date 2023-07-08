import 'package:get_storage/get_storage.dart';
import 'package:hive/hive.dart';

import '../constants/strings.dart';
import '../model/user.dart';

int getCurrentUserIndex() {
  int index = -1;
  int counter = 0;
  String? cUserID = GetStorage().read(kCurrentUserIDKey);
  Hive.box<User>(kUserBoxName).values.forEach((element) {
    if (element.userId == cUserID) {
      index = counter;
    }
    counter++;
  });
  return index;
}
