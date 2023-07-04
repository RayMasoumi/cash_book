import 'package:cash_book/constants/colors.dart';
import 'package:cash_book/constants/sizes.dart';
import 'package:flutter/material.dart';

class RoundedSubmitButtonWidget extends StatelessWidget {
  final Color backgroundColor = kPrimaryColor;
  final String text;
  final Function() onPressed;

  const RoundedSubmitButtonWidget({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: kHeight * 0.08,
      margin: const EdgeInsets.all(20),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: const MaterialStatePropertyAll(
            kPrimaryColor,
          ),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: kBorderRadius45,
            ),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 25.0,
          ),
        ),
      ),
    );
  }
}
