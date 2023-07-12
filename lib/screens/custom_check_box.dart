import 'package:cash_book/constants/sizes.dart';
import 'package:cash_book/main.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/theme_controller.dart';

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
      shape: RoundedRectangleBorder(
        borderRadius: kBorderRadius6,
      ),
      onChanged: (value) => onPressed,
      side: AlwaysActiveBorderSide(),
      activeColor: Colors.transparent,
      checkColor: Get.find<ThemeController>().isDark.value
          ? Colors.white
          : Colors.black,
    );
  }
}
