import 'package:cash_book/widgets/default_padding.dart';
import 'package:flutter/material.dart';

class VerificationScreen extends StatelessWidget {
  const VerificationScreen({required Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: DefaultPadding(
          child: crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Text(
          kSignUpTitle,
          style: kSignUpTitleStyle,
        ),
          const SizedBox(
            height: 20.0,
          ),
          Text(
            kSignUpSubtitle,
            style: kIntroSubtitleStyle,
          ),
          const SizedBox(
            height: 26.0,
          ),
       ] ),
      ),
    );
  }
}
