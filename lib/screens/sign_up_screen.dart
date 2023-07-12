import 'package:cash_book/constants/sizes.dart';
import 'package:cash_book/methods/size_calculator_method.dart';
import 'package:cash_book/screens/custom_check_box.dart';
import 'package:cash_book/widgets/default_padding.dart';
import 'package:cash_book/widgets/top_title_subtitle_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constants/strings.dart';
import '../controllers/sign_up_controller.dart';
import '../controllers/theme_controller.dart';
import '../widgets/sign_up_screen_text_field_widget.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  //TODO make it responsive

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: DefaultPadding(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const TopTitleSubtitleWidget(
                    title: kSignUpTitle,
                    subtitle: kSignUpSubtitle,
                  ),
                  // * username
                  SignUpScreenTextFieldWidget(
                    title: kUsernameTitle.tr,
                    keyboardType: TextInputType.text,
                    controller: Get.find<SignUpController>().username!,
                    hintText: kUsernameHint.tr,
                  ),
                  SizedBox(
                    height: heightCalculator(19),
                  ),
                  // * email
                  SignUpScreenTextFieldWidget(
                    title: kEmailTitle.tr,
                    keyboardType: TextInputType.text,
                    controller: Get.find<SignUpController>().username!,
                    hintText: kEmailHint.tr,
                  ),
                  SizedBox(
                    height: heightCalculator(35),
                  ),
                  Row(
                    children: [
                      CustomCheckBox(
                        onPressed: () {},
                      ),
                      Text(
                        'I Agree To Terms And Conditions',
                        style: Get.find<ThemeController>().isDark.value
                            ? kIntroSkipStyle.copyWith(color: Colors.white)
                            : kIntroSkipStyle,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
