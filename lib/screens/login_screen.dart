import 'package:cash_book/constants/strings.dart';
import 'package:cash_book/widgets/default_padding.dart';
import 'package:cash_book/widgets/top_title_subtitle_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constants/colors.dart';
import '../constants/sizes.dart';
import '../controllers/sign_up_controller.dart';
import '../methods/size_calculator_method.dart';
import '../widgets/border_radius12_button.dart';
import '../widgets/sign_up_screen_text_field_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: DefaultPadding(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const TopTitleSubtitleWidget(
                    title: kWelcomeTitle,
                    subtitle: kLoginSubtitle,
                  ),
                  // * phone number
                  SignUpScreenTextFieldWidget(
                    title: kPhoneNumberTitle.tr,
                    keyboardType: TextInputType.number,
                    controller: Get.find<SignUpController>().phoneNumber!,
                    hintText: kPhoneNumberHint.tr,
                  ),
                ],
              ),
              Column(
                children: [
                  Hero(
                    tag: kLoginToVerificationTag,
                    child: BorderRadius12Button(
                      onPressed: () {
                        Get.toNamed(kVerificationScreenRoute);
                      },
                      text: kContinueText,
                      backgroundColor: kPrimaryColor,
                      textStyle: kBorder12ButtonTextStyle,
                    ),
                  ),
                  SizedBox(
                    height: heightCalculator(22),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        kDontHaveAnAccountText,
                        style: kIntroSubtitleStyle,
                      ),
                      TextButton(
                        onPressed: () {
                          Get.toNamed(kSignUpScreenRoute);
                        },
                        child: Text(
                          kCreateAccountText,
                          style: kIntroSubtitleStyle.copyWith(
                            color: kPrimaryColor,
                            decoration: TextDecoration.underline,
                          ),
                        ),
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
