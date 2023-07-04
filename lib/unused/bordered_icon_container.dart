import 'package:cash_book/constants/colors.dart';
import 'package:cash_book/constants/sizes.dart';
import 'package:flutter/material.dart';

class BorderedIconContainer extends StatelessWidget {
  const BorderedIconContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: kTopMargin, horizontal: 35),
      height: kIconContainerSide,
      width: kIconContainerSide,
      decoration: BoxDecoration(
        borderRadius: kBorderRadius15,
        color: Colors.white,
        border: Border.all(color: kBorderColor),
      ),
    );
  }
}
