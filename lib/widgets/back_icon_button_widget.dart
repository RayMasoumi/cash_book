import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constants/colors.dart';

class BackIconButtonWidget extends StatelessWidget {
  const BackIconButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: GestureDetector(
        onTap: () {
          Get.back();
        },
        child: const Icon(
          Icons.arrow_back_ios,
          color: kPrimaryColor,
          size: 30.0,
        ),
      ),
    );
  }
}
