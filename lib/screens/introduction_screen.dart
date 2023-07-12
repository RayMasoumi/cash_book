import 'package:cash_book/constants/sizes.dart';
import 'package:cash_book/controllers/theme_controller.dart';
import 'package:cash_book/methods/change_theme_method.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:introduction_screen_azin/intro_screen_on_boarding.dart';
import 'package:introduction_screen_azin/introduction.dart';
import '../constants/strings.dart';
import '../methods/is_logged_in_method.dart';

class CustomIntroductionScreen extends StatelessWidget {
  CustomIntroductionScreen({super.key});

  final List<Introduction> pages = [
    Introduction(
      imageUrl: kIntroImagePath1,
      title: kIntroTitle1.tr,
      subTitle: kIntroSubtitle1.tr,
      titleTextStyle: kIntroTitleStyle,
      subTitleTextStyle: kIntroSubtitleStyle,
    ),
    Introduction(
      imageUrl: kIntroImagePath2,
      title: kIntroTitle2.tr,
      subTitle: kIntroSubtitle2.tr,
      titleTextStyle: kIntroTitleStyle,
      subTitleTextStyle: kIntroSubtitleStyle,
    ),
    Introduction(
      imageUrl: kIntroImagePath3,
      title: kIntroTitle3.tr,
      subTitle: kIntroSubtitle3.tr,
      titleTextStyle: kIntroTitleStyle,
      subTitleTextStyle: kIntroSubtitleStyle,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return IntroScreenOnBoarding(
        introductionList: pages,
        backgroudColor: Theme.of(context).canvasColor,
        skipTextStyle: Get.find<ThemeController>().isDark.value
            ? kIntroSkipStyle.copyWith(color: Colors.white)
            : kIntroSkipStyle,
        onTapFinishedButton: () {
          // * Only show this page once
          isLoggedIn()
              ? Get.toNamed(kHomeScreenRoute)
              : Get.toNamed(kSignUpScreenRoute);
        },
        topIconButton: IconButton(
          icon: changeThemeIcon(Get.find<ThemeController>().isDark.value),
          color: Colors.white,
          iconSize: 35.0,
          onPressed: () {
            changeTheme(Get.find<ThemeController>().isDark.value);
          },
        ),
      );
    });
  }
}
