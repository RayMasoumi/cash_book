import 'package:cash_book/constants/colors.dart';
import 'package:flutter/material.dart';

class CustomCheckBox extends StatelessWidget {
  const CustomCheckBox({
    super.key,
    required this.onPressed,
  });

  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: true,
      checkColor: Colors.black,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6.0),
          side: const BorderSide(
            color: Colors.transparent,
          )),
      onChanged: (value) => onPressed,
    );
  }
}
