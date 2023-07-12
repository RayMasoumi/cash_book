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
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
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
            BorderRadius12Button(
              onPressed: () {},
              text: 'Resend Code',
              //TODO the color of resend button must become blue after 60s
              backgroundColor: kDisabledColor,
              textStyle: kBorder12ButtonTextStyle,
              width: widthCalculator(224),
            ),
            SizedBox(
              height: heightCalculator(176),
            ),
            BorderRadius12Button(
              onPressed: () {},
              text: 'Log In',
              backgroundColor: kPrimaryColor,
              textStyle: kBorder12ButtonTextStyle,
            ),
          ]),
        ),
      ),
    );
  }
}
