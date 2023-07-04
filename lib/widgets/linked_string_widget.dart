import 'package:cash_book/constants/colors.dart';
import 'package:cash_book/constants/sizes.dart';
import 'package:flutter/material.dart';

class LinkedStringWidget extends StatelessWidget {
  final String firstText;
  final String linkedText;
  final Function() onTap;

  const LinkedStringWidget({
    super.key,
    required this.firstText,
    required this.linkedText,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          firstText,
          style: TextStyle(fontSize: kSmallCaption),
        ),
        GestureDetector(
          onTap: onTap,
          child: Text(
            linkedText,
            style: TextStyle(
                fontSize: kSmallCaption,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                color: kPrimaryColor),
          ),
        ),
      ],
    );
  }
}
