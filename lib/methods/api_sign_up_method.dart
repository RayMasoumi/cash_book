import 'dart:convert';

import 'package:cash_book/constants/strings.dart';
import 'package:cash_book/controllers/temp_user_controller.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

Future<bool> signUp() async {
  final url = Uri.parse(
      kCreateAccountUrl); // Replace with the appropriate sign-up API endpoint

  try {
    final response = await http.post(
      url,
      body: json.encode({
        "username": Get.find<TempUserController>().tempUser.value?.userName,
        "phoneNumber":
            Get.find<TempUserController>().tempUser.value?.userPhoneNumber,
        "email": Get.find<TempUserController>().tempUser.value?.userEmail,
        "password": "string"
      }),
      // headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode == 200) {
      // Successful sign-up, handle the response data if needed
      final responseData = json.decode(response.body);
      print('successful response data: $responseData');
      // * data accepted
      return true;

      // ...
    } else {
      // Sign-up request failed, handle the error response
      final errorData = json.decode(response.body);
      print('Sign-up failed: ${errorData['message']}');
      throw Exception(
          'Verification failed with status code ${response.statusCode}');
    }
  } catch (e) {
    // Handle any exceptions that occur during the request
    print('Error occurred: $e');
    return false;
  }
}
