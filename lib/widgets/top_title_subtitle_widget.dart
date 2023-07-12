import 'package:cash_book/methods/size_calculator_method.dart';
import 'package:flutter/material.dart';

import '../constants/sizes.dart';
import '../constants/strings.dart';

class TopTitleSubtitleWidget extends StatelessWidget {
  const TopTitleSubtitleWidget({
    super.key,
    required this.title,
    required this.subtitle,
  });

  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: kSignUpTitleStyle,
        ),
        SizedBox(
          height: heightCalculator(20.0),
        ),
        Text(
          subtitle,
          style: kIntroSubtitleStyle,
        ),
        SizedBox(
          height: heightCalculator(26.0),
        ),
      ],
    );
  }
}
