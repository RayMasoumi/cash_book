import 'package:cash_book/constants/colors.dart';
import 'package:cash_book/constants/sizes.dart';
import 'package:cash_book/methods/size_calculator_method.dart';
import 'package:cash_book/widgets/border_radius12_button.dart';
import 'package:cash_book/widgets/default_padding.dart';
import 'package:cash_book/widgets/top_title_subtitle_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../constants/strings.dart';
import 'package:pinput/pinput.dart';

class VerificationScreen extends StatelessWidget {
  const VerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: DefaultPadding(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    TopTitleSubtitleWidget(
                        title: kVerificationTitle.tr,
                        subtitle: kVerificationSubtitle.tr),
                    Pinput(
                      defaultPinTheme: kDefaultPinTheme,
                      androidSmsAutofillMethod: AndroidSmsAutofillMethod.none,
                      // controller: pinController,
                      onCompleted: (pin) {
                        //TODO controller
                      },
                    ),
                    SizedBox(
                      height: heightCalculator(33.0),
                    ),
                    Text(
                      'After 60 Seconds You Can Receive a New Code',
                      style: kIntroSubtitleStyle,
                    ),
                    SizedBox(
                      height: heightCalculator(33.0),
                    ),
                    //TODO the color of resend button must become blue after 60s
                    Hero(
                      tag: kLoginToVerificationTag,
                      child: BorderRadius12Button(
                        onPressed: () {},
                        text: kResendCodeText,
                        //TODO the color of resend button must become blue after 60s
                        backgroundColor: kDisabledColor,
                        textStyle: kBorder12ButtonTextStyle,
                        width: widthCalculator(224),
                      ),
                    ),
                  ],
                ),
                // * bottom buttons:
                Column(
                  children: [
                    BorderRadius12Button(
                      onPressed: () {},
                      text: kLogInText,
                      backgroundColor: kPrimaryColor,
                      textStyle: kBorder12ButtonTextStyle,
                    ),
                    SizedBox(
                      height: heightCalculator(17.0),
                    ),
                    BorderRadius12Button(
                        onPressed: () {
                          Get.back();
                        },
                        text: kBackButtonText,
                        backgroundColor: Colors.white,
                        textStyle: kBackButtonTextStyle,
                        borderColor: kGreyBorderColor),
                  ],
                )
              ]),
        ),
      ),
    );
  }
}
