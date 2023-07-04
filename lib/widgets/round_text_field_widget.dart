import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../constants/sizes.dart';

class RoundTextFieldWidget extends StatelessWidget {
  final String hintText;
  final TextInputType keyBoardType;
  final TextEditingController controller;
  final String title;
  final TextAlign textAlign;

  const RoundTextFieldWidget({
    super.key,
    required this.title,
    required this.hintText,
    this.keyBoardType = TextInputType.text,
    required this.controller,
    this.textAlign = TextAlign.start,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8.0, bottom: 8.0),
            child: Text(
              title,
              style: kSmallTitlesStyle.copyWith(color: Colors.black),
            ),
          ),
          TextField(
            textAlign: textAlign,
            style: const TextStyle(
                color: Colors.black87,
                fontWeight: FontWeight.bold,
                fontSize: 15.0),
            controller: controller,
            cursorColor: Colors.black54,
            keyboardType: keyBoardType,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: kBorderRadius45,
                borderSide: const BorderSide(color: kSecondaryColor),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: kBorderRadius45,
                borderSide: const BorderSide(color: kSecondaryColor),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: kBorderRadius45,
                borderSide: const BorderSide(color: kPrimaryColor),
              ),
              hintText: hintText,
              hintStyle: TextStyle(color: Colors.grey.shade400),
            ),
          ),
        ],
      ),
    );
  }
}
