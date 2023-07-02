import 'package:cash_book/constants/colors.dart';
import 'package:cash_book/constants/sizes.dart';
import 'package:cash_book/constants/strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:introduction_screen/introduction_screen.dart';

import '../methods/introduction_page_method.dart';

class IntroductionSliderScreen extends StatelessWidget {
  const IntroductionSliderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      // * introduction screen pages
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
      skip: const Text(kSkipButtonText, style: kIntroButtonTextStyle),
      done: const Text(
        kDoneButtonText,
        style: kIntroButtonTextStyle,
      ),
      onDone: () {
        // * Only show this page once
        GetStorage().write('isFirstRun', 'false');
        Get.toNamed(kHomeScreenRoute);
      },
      dotsDecorator: const DotsDecorator(
        activeColor: kPrimaryColor,
      ),
    );
  }
}
