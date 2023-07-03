import 'package:cash_book/constants/sizes.dart';
import 'package:flutter/material.dart';

class SizedFABWidget extends StatelessWidget {
  final double buttonHeight;
  final double buttonWidth;
  final Function() onPressed;
  final IconData buttonIcon;
  final String buttonText;
  final Color buttonColor;

  const SizedFABWidget(
      {super.key,
      required this.buttonHeight,
      required this.buttonWidth,
      required this.onPressed,
      required this.buttonIcon,
      required this.buttonText,
      required this.buttonColor});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: buttonWidth,
      height: buttonHeight,
      child: FloatingActionButton(
        shape: RoundedRectangleBorder(
          borderRadius: kBorderRadius45,
        ),
        onPressed: onPressed,
        elevation: 10.0,
        backgroundColor: buttonColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              buttonText,
              style: kIconTextStyle,
            ),
            SizedBox(
              width: k10Width,
            ),
            Icon(buttonIcon, size: kIconButtonSize),
          ],
        ),
      ),
    );
  }
}
