import 'package:flutter/material.dart';

import '../methods/size_calculator_method.dart';

class PaddedDivider extends StatelessWidget {
  const PaddedDivider({
    super.key,
    required this.topPadding,
    required this.bottomPadding,
    required this.rightPadding,
    required this.leftPadding,
    required this.thickness,
  });

  final double topPadding;
  final double bottomPadding;
  final double thickness;
  final double rightPadding;
  final double leftPadding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: heightCalculator(topPadding),
        bottom: heightCalculator(bottomPadding),
      ),
      child: Divider(
        thickness: heightCalculator(thickness),
        indent: widthCalculator(leftPadding),
        endIndent: widthCalculator(rightPadding),
      ),
    );
  }
}
