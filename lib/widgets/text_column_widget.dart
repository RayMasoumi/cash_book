import 'package:flutter/material.dart';

import '../constants/sizes.dart';
import '../methods/size_calculator_method.dart';

class TextColumnWidget extends StatelessWidget {
  final String title;
  final String subtitle;

  const TextColumnWidget(
      {super.key, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: widthCalculator(16),
          ),
        ),
        Text(
          subtitle,
          style: kSubtitleStyle,
        ),
      ],
    );
  }
}
