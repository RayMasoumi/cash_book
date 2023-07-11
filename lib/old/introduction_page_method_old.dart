import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import '../constants/sizes.dart';

PageViewModel introductionPageViewModel({
  required String title,
  required String subtitle,
  required String imagePath,
}) {
  // * pages of introduction screen
  return PageViewModel(
    title: title,
    body: subtitle,
    image: SizedBox(
      width: kWidth,
      child: Image.asset(imagePath),
    ),
    decoration: PageDecoration(
      bodyAlignment: Alignment.bottomCenter,
      titleTextStyle: kIntroTitleStyleOld,
      bodyTextStyle: kIntroSubtitleStyleOld,
      imageFlex: 2,
      imagePadding: EdgeInsets.only(top: kTopMargin),
    ),
  );
}
