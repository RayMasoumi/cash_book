import 'package:cash_book/constants/colors.dart';
import 'package:cash_book/constants/sizes.dart';
import 'package:flutter/material.dart';

class StackedCardWidget extends StatelessWidget {
  const StackedCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 150.0,
      left: 0.0,
      right: 0.0,
      child: Card(
        margin: EdgeInsets.zero,
        elevation: 5.0,
        color: kPastel1Color,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(30.0),
          ),
        ),
        child: SizedBox(
          width: kWidth,
          height: kHeight,
        ),
      ),
    );
  }
}
