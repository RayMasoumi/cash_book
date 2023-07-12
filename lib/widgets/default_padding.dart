import 'package:cash_book/constants/sizes.dart';
import 'package:cash_book/constants/strings.dart';
import 'package:cash_book/widgets/sign_up_screen_text_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/sign_up_controller.dart';

class DefaultPadding extends StatelessWidget {
  const DefaultPadding({
    super.key,
    this.child,
  });

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 87.0),
      child: child,
    );
  }
}
