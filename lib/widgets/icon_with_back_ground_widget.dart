import 'package:cash_book/constants/sizes.dart';
import 'package:flutter/material.dart';

class IconWithBackGroundWidget extends StatelessWidget {
  final IconData icon;
  final Color backgroundColor;

  const IconWithBackGroundWidget(
      {super.key, required this.icon, required this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
      height: kIconContainerSide,
      width: kIconContainerSide,
      child: Icon(
        icon,
        color: Colors.white,
        size: kIconButtonSize,
      ),
    );
  }
}
