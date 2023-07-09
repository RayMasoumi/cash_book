import 'package:cash_book/controllers/temp_user_controller.dart';
import 'package:cash_book/model/user.dart';
import 'package:get/get.dart';
import 'package:uuid/uuid.dart';
import '../controllers/sign_up_controller.dart';

const uuid = Uuid();
// * call after user fills textFields and presses create account button
void createTempUser() {
  Get.find<TempUserController>().tempUser.value = User(
    userId: uuid.v1().toString(),
    userName: Get.find<SignUpController>().username!.text,
    userPhoneNumber: Get.find<SignUpController>().phoneNumber!.text,
    userEmail: Get.find<SignUpController>().email!.text,
    lastSyncDate: DateTime.now().toString(),
    userCreationDate: DateTime.now().toString(),
  );
}
