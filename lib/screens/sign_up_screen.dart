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
                      title: kUsernameTitle.tr,
                      keyBoardType: TextInputType.text,
                      hintText: kUsernameHint.tr,
                      controller: TextEditingController(),
                    ),
                    RoundTextFieldWidget(
                      title: kPhoneNumberTitle.tr,
                      keyBoardType: TextInputType.number,
                      hintText: kPhoneNumberHint.tr,
                      controller: TextEditingController(),
                    ),
                    RoundTextFieldWidget(
                      keyBoardType: TextInputType.emailAddress,
                      title: kEmailTitle.tr,
                      hintText: kEmailHint,
                      controller: TextEditingController(),
                    ),
                    // * submit button:
                    RoundedSubmitButtonWidget(
                      text: kCreateAccountText.tr,
                      onPressed: () {
                        // * must go to verification:
                        Get.find<VerificationController>().isPressed.value =
                            true;
                        Get.toNamed(kLoginScreenRoute);
                      },
                    ),
                    // * log in text:
                    LinkedStringWidget(
                        firstText: kHaveAnAccountText.tr,
                        linkedText: kLogInText.tr,
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
