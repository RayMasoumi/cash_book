import 'package:cash_book/constants/strings.dart';
import 'package:cash_book/widgets/app_bar_title_widget.dart';
import 'package:cash_book/widgets/linked_string_widget.dart';
import 'package:cash_book/widgets/submit_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/verification_controller.dart';
import '../widgets/round_text_field_widget.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: Flex(
          direction: Axis.vertical,
          children: [
            const Column(
              children: [
                AppBarTitleWidget(
                  title: kSignUpTitle,
                ),
              ],
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    // * textField and description
                    RoundTextFieldWidget(
                      title: kUsernameTitle,
                      keyBoardType: TextInputType.text,
                      hintText: kUsernameHint,
                      controller: TextEditingController(),
                    ),
                    RoundTextFieldWidget(
                      title: kPhoneNumberTitle,
                      keyBoardType: TextInputType.number,
                      hintText: '+981234567890',
                      controller: TextEditingController(),
                    ),
                    RoundTextFieldWidget(
                      keyBoardType: TextInputType.emailAddress,
                      title: 'E-mail'.tr,
                      hintText: 'cashBook@mail.com',
                      controller: TextEditingController(),
                    ),
                    // * submit button:
                    RoundedSubmitButtonWidget(
                      text: kCreateAccountText,
                      onPressed: () {
                        // * must go to verification:
                        Get.find<VerificationController>().isPressed.value =
                            true;
                        Get.toNamed(kLoginScreenRoute);
                      },
                    ),
                    // * log in text:
                    LinkedStringWidget(
                        firstText: 'Already have an account? '.tr,
                        linkedText: ''
                                'Log In'
                            .tr,
                        onTap: () {
                          Get.find<VerificationController>().isPressed.value =
                              false;
                          Get.offNamed(kLoginScreenRoute);
                        }),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
