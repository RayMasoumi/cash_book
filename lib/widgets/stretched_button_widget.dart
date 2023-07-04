import 'package:cash_book/constants/colors.dart';
import 'package:cash_book/constants/sizes.dart';
import 'package:cash_book/constants/strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StretchedButtonWidget extends StatelessWidget {
  const StretchedButtonWidget({
    required this.buttonText,
    super.key,
  });

  final buttonText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: const MaterialStatePropertyAll(kPrimaryColor),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: kBorderRadius15,
            ),
          ),
        ),
        onPressed: () {
          Get.toNamed(kBookScreenRoute);
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            buttonText,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 25.0,
            ),
          ),
        ),
      ),
    );
  }
}
