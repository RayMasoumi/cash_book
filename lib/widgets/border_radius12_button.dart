import 'package:cash_book/methods/size_calculator_method.dart';
import 'package:flutter/material.dart';

import '../constants/sizes.dart';

class BorderRadius12Button extends StatelessWidget {
  BorderRadius12Button({
    super.key,
    required this.onPressed,
    required this.text,
    required this.backgroundColor,
    required this.textStyle,
    double? width,
  }) : width = width ?? widthCalculator(322);

  final Function() onPressed;
  final String text;
  final Color backgroundColor;
  final TextStyle textStyle;
  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: heightCalculator(53),
      width: width,
      child: TextButton(
        style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(backgroundColor),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: kBorderRadius12,
            ),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: textStyle,
        ),
      ),
    );
  }
}
