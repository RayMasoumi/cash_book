import 'package:cash_book/constants/colors.dart';
import 'package:cash_book/constants/sizes.dart';
import 'package:cash_book/methods/size_calculator_method.dart';
import 'package:flutter/material.dart';

class SignUpScreenTextFieldWidget extends StatelessWidget {
  const SignUpScreenTextFieldWidget({
    super.key,
    required this.title,
    required this.keyboardType,
    required this.controller,
    required this.hintText,
  });

  final String title;
  final TextInputType keyboardType;
  final TextEditingController controller;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: kTextFieldTitleStyle,
        ),
        SizedBox(
          height: k3Height,
        ),
        TextField(
          textAlign: TextAlign.start,
          style: TextStyle(
            color: Colors.black87,
            fontWeight: FontWeight.bold,
            fontSize: widthCalculator(15),
          ),
          controller: controller,
          cursorColor: Colors.black54,
          keyboardType: keyboardType,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: kBorderRadius12,
              borderSide: BorderSide(color: kTextFieldBorderColor),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: kBorderRadius12,
              borderSide: BorderSide(color: kTextFieldBorderColor),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: kBorderRadius12,
              borderSide: BorderSide(color: kTextFieldBorderColor),
            ),
            hintText: hintText,
            hintStyle: TextStyle(
              fontSize: widthCalculator(14),
              color: kTextFieldHintColor,
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
      ],
    );
  }
}
