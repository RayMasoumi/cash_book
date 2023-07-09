import 'dart:convert';

import 'package:cash_book/constants/strings.dart';
import 'package:cash_book/controllers/temp_user_controller.dart';
import 'package:cash_book/model/user.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

Future<bool> apiLoginUser(String phoneNumber) async {
  const url = kLoginUrl; // Replace with your API endpoint URL

  try {
    final response = await http.post(
      Uri.parse(url),
      body: json.encode({'phoneNumber': phoneNumber}),
    );

    if (response.statusCode == 200) {
      final userData = json.decode(response.body);

      // Retrieve user information from the response
      // TODO retrieve whatever information needed like below
      final userEmail = userData['email'];

      // Perform any necessary actions with the user data
      // ...

      // TODO add retrieved information to controller
      Get.find<TempUserController>().tempUser.value = User(
          userId: 'userId',
          userName: 'userName',
          userPhoneNumber: phoneNumber,
          userEmail: userEmail,
          lastSyncDate: 'lastSyncDate',
          userCreationDate: 'userCreationDate');

      return true;
    } else {
      throw Exception(
          'validation failed with status code ${response.statusCode}');
    }
  } catch (e) {
    throw Exception('Error occurred during validation : $e');
  }
}
