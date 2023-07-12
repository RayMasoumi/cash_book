import 'package:cash_book/screens/default_padding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constants/sizes.dart';
import '../constants/strings.dart';
import '../controllers/sign_up_controller.dart';
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                kSignUpTitle,
                style: kSignUpTitleStyle,
              ),
              const SizedBox(
                height: 20.0,
              ),
              Text(
                kSignUpSubtitle,
                style: kIntroSubtitleStyle,
              ),
              const SizedBox(
                height: 26.0,
              ),
              SignUpScreenTextFieldWidget(
                title: kUsernameTitle.tr,
                keyboardType: TextInputType.text,
                controller: Get.find<SignUpController>().username!,
                hintText: kUsernameHint.tr,
              ),
              const SizedBox(
                height: 19.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
