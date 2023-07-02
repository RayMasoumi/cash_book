import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'colors.dart';

final kWidth = Get.width; // * 411.42857142857144
final kHeight = Get.height; // * 707.4285714285714
final kFABHeight = kHeight * 0.11;
final kFABWidth = kWidth * 0.55;
final kIconButtonSize = kWidth * 0.08;
final k40Height = kHeight * 0.05;
final k60Height = kHeight * 0.08;

final kIconTextStyle =
    TextStyle(fontSize: kWidth * 0.05, fontWeight: FontWeight.bold);
final kIntroTitleStyle = TextStyle(
    color: kPrimaryColor, fontSize: kWidth * 0.07, fontWeight: FontWeight.bold);
final kIntroSubtitleStyle =
    TextStyle(color: kMainSubtitle, fontSize: kWidth * 0.055);
const kIntroButtonTextStyle = TextStyle(color: kPrimaryColor);
