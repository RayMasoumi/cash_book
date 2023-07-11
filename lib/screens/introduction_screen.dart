import 'package:cash_book/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen_azin/intro_screen_on_boarding.dart';
import 'package:introduction_screen_azin/introduction.dart';
import 'package:pelaicons/pelaicons.dart';

import '../constants/strings.dart';

class CustomIntroductionScreen extends StatelessWidget {
  CustomIntroductionScreen({super.key});

  final List<Introduction> pages = [
    Introduction(
      imageUrl: kIntroImagePath1,
      title: kIntroTitle1,
      subTitle: kIntroSubtitle1,
      titleTextStyle: kIntroTitleStyle,
      subTitleTextStyle: kIntroSubtitleStyle,
    ),
    Introduction(
      imageUrl: kIntroImagePath2,
      title: kIntroTitle2,
      subTitle: kIntroSubtitle2,
      titleTextStyle: kIntroTitleStyle,
      subTitleTextStyle: kIntroSubtitleStyle,
    ),
    Introduction(
      imageUrl: kIntroImagePath3,
      title: kIntroTitle3,
      subTitle: kIntroSubtitle3,
      titleTextStyle: kIntroTitleStyle,
      subTitleTextStyle: kIntroSubtitleStyle,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return IntroScreenOnBoarding(
      introductionList: pages,
      backgroudColor: Colors.white,
      skipTextStyle: kIntroSkipStyle,
      topIconButton: IconButton(
        icon: const Icon(Pelaicons.sun_light_outline),
        color: Colors.white,
        iconSize: 35.0,
        onPressed: () {},
      ),
    );
  }
}
