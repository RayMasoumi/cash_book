import 'package:cash_book/constants/colors.dart';
import 'package:cash_book/constants/sizes.dart';
import 'package:flutter/material.dart';

class CenterHintTextFieldWidget extends StatelessWidget {
  const CenterHintTextFieldWidget({
    required this.hintText,
    required this.controller,
    this.keyBoardType = TextInputType.text,
    super.key,
  });

  final String hintText;
  final TextEditingController? controller;
  final TextInputType keyBoardType;

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: keyBoardType,
      textAlign: TextAlign.center,
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: kSecondaryColor,
          ),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: kPrimaryColor, width: k3Width),
        ),
      ),
    );
  }
}
