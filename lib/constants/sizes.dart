import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'colors.dart';

// * heights and widths:
final kWidth = Get.width; // * 393
final kHeight = Get.height; // * 827
final kFABHeight = kHeight * 0.09;
final kFABWidth = kWidth * 0.45;
final kIconButtonSize = kWidth * 0.1;
final k30Width = kWidth * 0.07;
final k3Width = kWidth * 0.007;
final k10Width = kWidth * 0.024;
final kBottomListHeight = kHeight * 0.6;
final k40Height = kHeight * 0.05;
final kTopMargin = kHeight * 0.08;
final kIconContainerSide = kHeight * 0.13;
final kTileBottomMargin = kHeight * 0.015;
final kSmallCaption = kWidth * 0.04;

// * border radius:
final kBorderRadius45 = BorderRadius.circular(45);
final kBorderRadius15 = BorderRadius.circular(15);

// * new styles
final kIntroTitleStyle = TextStyle(
  fontSize: kWidth * 0.05,
  color: Colors.black,
);
final kIntroSubtitleStyle = TextStyle(
  fontSize: kWidth * 0.035,
  color: Colors.black,
);
final kIntroSkipStyle = TextStyle(
  fontSize: kWidth * 0.03,
  color: Colors.black,
);

// * old styles:
final kIconTextStyle = TextStyle(
  fontSize: kWidth * 0.048,
  fontWeight: FontWeight.bold,
);
final kIntroTitleStyleOld = TextStyle(
  color: kPrimaryColor,
  fontSize: kWidth * 0.07,
  fontWeight: FontWeight.bold,
);
final kBigTitleStyle = TextStyle(
  fontWeight: FontWeight.w900,
  fontSize: kWidth * 0.072,
);
final kSmallTitlesStyle = TextStyle(
  color: kPrimaryColor,
  fontSize: kWidth * 0.050,
  fontWeight: FontWeight.w900,
);
final kIntroSubtitleStyleOld = TextStyle(
  color: kMainSubtitle,
  fontSize: kWidth * 0.055,
);
const kIntroButtonTextStyle = TextStyle(
  color: kPrimaryColor,
);
const kDescriptionStyle = TextStyle(
  color: Colors.grey,
);
