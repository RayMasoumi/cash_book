import 'package:cash_book/constants/sizes.dart';
import 'package:flutter/material.dart';

class AppBarTitleWidget extends StatelessWidget {
  final String title;

  const AppBarTitleWidget({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        title,
        style: kBigTitleStyle,
      ),
    );
  }
}
