import 'package:cash_book/methods/size_calculator_method.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart';
import 'colors.dart';

// * heights and widths:
const kScreenWidth = 393;
const kScreenHeight = 827;
final kWidth = Get.width; // * 393
final kHeight = Get.height; // * 827
// * width
final k3Width = widthCalculator(3);
final k10Width = widthCalculator(10);
final k30Width = widthCalculator(30);
// * height
final k3Height = heightCalculator(3);
final k40Height = heightCalculator(40);

// * border radius:
final kBorderRadius6 = BorderRadius.circular(6);
final kBorderRadius12 = BorderRadius.circular(12);
final kBorderRadius15 = BorderRadius.circular(15);
final kBorderRadius45 = BorderRadius.circular(45);
const kGreyButtonBorder = BorderSide(width: 1.0, color: Color(0xFF8B8B8B));

// * new styles
final kIntroTitleStyle = TextStyle(
  fontSize: widthCalculator(20),
);
final kIntroSubtitleStyle = TextStyle(
  fontSize: widthCalculator(14),
  // * also used for signup subtitle and 'already have an account' text
);
final kIntroSkipStyle = TextStyle(
  fontSize: widthCalculator(12),
  color: Colors.black,
  // * also used for terms and conditions
);
final kSignUpTitleStyle = TextStyle(
  fontSize: widthCalculator(24),
);
final kTextFieldTitleStyle = TextStyle(
  fontSize: widthCalculator(14),
  color: kTextFieldTitleColor,
);
final kBorder12ButtonTextStyle = TextStyle(
  color: Colors.white,
  fontSize: widthCalculator(20.0),
);
final kBackButtonTextStyle = TextStyle(
  color: const Color(0xFF8B8B8B),
  fontSize: widthCalculator(20.0),
);

// * tab style:
final kTabTextStyle = TextStyle(
  // color: Colors.black,
  fontSize: widthCalculator(12),
);
final kSelectedTabTextStyle = TextStyle(
  color: Colors.white,
  fontSize: widthCalculator(12),
);
final kUnSelectedTabTextStyle = TextStyle(
  color: Colors.black,
  fontSize: widthCalculator(12),
);

// * pin style:
final kDefaultPinTheme = PinTheme(
  width: widthCalculator(68),
  height: heightCalculator(94),
  textStyle: TextStyle(
      fontSize: widthCalculator(20),
      color: Colors.black,
      fontWeight: FontWeight.w600),
  decoration: BoxDecoration(
    color: kDisabledColor,
    border: Border.all(
      color: kDisabledColor,
    ),
    borderRadius: BorderRadius.circular(17),
  ),
);

// *******************old section**************************

// * old width and height
final kFABHeight = kHeight * 0.09;
final kFABWidth = kWidth * 0.45;
final kIconButtonSize = kWidth * 0.1;
final kBottomListHeight = kHeight * 0.6;
final kTopMargin = kHeight * 0.08;
final kIconContainerSide = kHeight * 0.13;
final kTileBottomMargin = kHeight * 0.015;
final kSmallCaption = kWidth * 0.04;

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
  color: kMainSubtitleColor,
  fontSize: kWidth * 0.055,
);

const kDescriptionStyle = TextStyle(
  color: Colors.grey,
);
