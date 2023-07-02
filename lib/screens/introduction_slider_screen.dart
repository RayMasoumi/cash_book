import 'package:cash_book/constants/colors.dart';
import 'package:cash_book/constants/sizes.dart';
import 'package:cash_book/constants/strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:introduction_screen/introduction_screen.dart';

class IntroductionSliderScreen extends StatelessWidget {
  const IntroductionSliderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: [
        introductionPageViewModel(
          title: kIntroTitle1,
          subtitle: kIntroSubtitle1,
          imagePath: kIntroImagePath1,
        ),
        introductionPageViewModel(
          title: kIntroTitle2,
          subtitle: kIntroSubtitle2,
          imagePath: kIntroImagePath2,
        ),
        introductionPageViewModel(
          title: kIntroTitle3,
          subtitle: kIntroSubtitle3,
          imagePath: kIntroImagePath3,
        ),
      ],
      //TODO check if language is persian and set rtl = true
      showSkipButton: true,
      showNextButton: false,
      skip: const Text("Skip", style: kIntroButtonTextStyle),
      done: const Text(
        "Done",
        style: kIntroButtonTextStyle,
      ),
      onDone: () {
        GetStorage().write('isFirstRun', 'false');
        Get.toNamed('/home_screen');
      },
      dotsDecorator: const DotsDecorator(
        activeColor: kPrimaryColor,
      ),
    );
  }

  PageViewModel introductionPageViewModel({
    required String title,
    required String subtitle,
    required String imagePath,
  }) {
    return PageViewModel(
      title: title,
      body: subtitle,
      image: SizedBox(
        width: kWidth,
        child: Image.asset(imagePath),
      ),
      decoration: PageDecoration(
        bodyAlignment: Alignment.bottomCenter,
        titleTextStyle: kIntroTitleStyle,
        bodyTextStyle: kIntroSubtitleStyle,
        imageFlex: 2,
        imagePadding: EdgeInsets.only(top: k60Height),
      ),
    );
  }
}
