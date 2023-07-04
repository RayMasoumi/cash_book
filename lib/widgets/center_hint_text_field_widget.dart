import 'package:cash_book/constants/colors.dart';
import 'package:cash_book/constants/sizes.dart';
import 'package:flutter/material.dart';

class CenterHintTextFieldWidget extends StatelessWidget {
  const CenterHintTextFieldWidget({
    required this.hintText,
    super.key,
  });

  final hintText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      textAlign: TextAlign.center,
      onChanged: (value) {},
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
