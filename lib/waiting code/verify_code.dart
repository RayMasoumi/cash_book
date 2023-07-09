import 'dart:convert';

import 'package:cash_book/constants/strings.dart';
import 'package:http/http.dart' as http;

Future<bool> verifyCode(String phoneNumber, String verificationCode) async {
  final url = Uri.parse(
      kVerifyCodeUrl); // Replace with your server's verification endpoint URL

  try {
    final response = await http.post(
      url,
      body: json.encode({
        'phoneNumber': phoneNumber,
        'verificationCode': verificationCode,
      }),
    );

    if (response.statusCode == 200) {
      final responseData = json.decode(response.body);
      final isVerified = responseData['isVerified'];
      return isVerified;
    } else {
      throw Exception(
          'Verification failed with status code ${response.statusCode}');
    }
  } catch (e) {
    throw Exception('Error occurred during verification: $e');
  }
}
