import 'package:cash_book/constants/colors.dart';
import 'package:cash_book/constants/sizes.dart';
import 'package:cash_book/constants/strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:introduction_screen/introduction_screen.dart';

import '../methods/introduction_page_method.dart';
import '../methods/is_logged_in_method.dart';

class IntroductionSliderScreen extends StatelessWidget {
  const IntroductionSliderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      // * introduction screen pages
      pages: [
        introductionPageViewModel(
          title: kIntroTitle1.tr,
          subtitle: kIntroSubtitle1.tr,
          imagePath: kIntroImagePath1,
        ),
        introductionPageViewModel(
          title: kIntroTitle2.tr,
          subtitle: kIntroSubtitle2.tr,
          imagePath: kIntroImagePath2,
        ),
        introductionPageViewModel(
          title: kIntroTitle3.tr,
          subtitle: kIntroSubtitle3.tr,
          imagePath: kIntroImagePath3,
        ),
      ],
      showSkipButton: true,
      showNextButton: false,
      skip: Text(kSkipButtonText.tr, style: kIntroButtonTextStyle),
      done: Text(
        kDoneButtonText.tr,
        style: kIntroButtonTextStyle,
      ),
      onDone: () {
        // * Only show this page once
        isLoggedIn()
            ? Get.toNamed(kHomeScreenRoute)
            : Get.toNamed(kSignUpScreenRoute);
      },
      dotsDecorator: const DotsDecorator(
        activeColor: kPrimaryColor,
      ),
    );
  }
}
