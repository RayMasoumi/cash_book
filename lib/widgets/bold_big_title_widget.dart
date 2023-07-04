import 'package:cash_book/constants/colors.dart';
import 'package:cash_book/constants/sizes.dart';
import 'package:flutter/material.dart';

class BoldBigTitleWidget extends StatelessWidget {
  const BoldBigTitleWidget({
    required this.title,
    super.key,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: kBigTitleStyle.copyWith(color: kPrimaryColor),
      textAlign: TextAlign.center,
    );
  }
}
