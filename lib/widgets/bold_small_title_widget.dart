import 'package:cash_book/constants/sizes.dart';
import 'package:flutter/material.dart';

class BoldSmallTitleWidget extends StatelessWidget {
  const BoldSmallTitleWidget({
    required this.title,
    super.key,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: kSmallTitlesStyle,
      textAlign: TextAlign.center,
    );
  }
}
