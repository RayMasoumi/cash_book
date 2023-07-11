import 'package:flutter/material.dart';
import 'package:introduction_screen_azin/intro_screen_on_boarding.dart';
import 'package:introduction_screen_azin/introduction.dart';
import 'package:pelaicons/pelaicons.dart';

class CustomIntroductionScreen extends StatelessWidget {
  CustomIntroductionScreen({super.key});

  final List<Introduction> pages = [
    Introduction(
      imageUrl: 'assets/images/introduction_page_1.png',
      title: 'title',
      subTitle: 'subTitle',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return IntroScreenOnBoarding(
      introductionList: pages,
      topIconButton: IconButton(
        icon: const Icon(Pelaicons.sun_light_outline),
        color: Colors.white,
        iconSize: 25.0,
        onPressed: () {},
      ),
    );
  }
}
