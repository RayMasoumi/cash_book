import 'package:cash_book/methods/size_calculator_method.dart';
import 'package:flutter/material.dart';
import 'package:pelaicons/pelaicons.dart';

class IconsRowWidget extends StatelessWidget {
  const IconsRowWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Pelaicons.search_light_outline,
          size: widthCalculator(17),
        ),
        SizedBox(
          width: widthCalculator(20),
        ),
        Icon(
          Pelaicons.user_added_light_outline,
          size: widthCalculator(20),
        ),
        SizedBox(
          width: widthCalculator(20),
        ),
        Icon(
          Pelaicons.checked_light_outline,
          size: widthCalculator(18),
        ),
      ],
    );
  }
}
