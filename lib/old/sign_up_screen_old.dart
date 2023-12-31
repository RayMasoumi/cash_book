import 'package:cash_book/constants/strings.dart';
import 'package:cash_book/controllers/sign_up_controller.dart';
import 'package:cash_book/methods/create_temp_user_method.dart';
import 'package:cash_book/methods/api_sign_up_method.dart';
import 'package:cash_book/widgets/app_bar_title_widget.dart';
import 'package:cash_book/widgets/linked_string_widget.dart';
import 'package:cash_book/widgets/submit_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/verification_controller.dart';
import 'round_text_field_widget_old.dart';

class SignUpScreenOld extends StatelessWidget {
  const SignUpScreenOld({super.key});

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
                  title: kWelcomeTitle,
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
                      onPressed: () async {
                        // * creates a temp user:
                        createTempUser();
                        if (await signUp()) {
                          // * if the entered data was accepted:
                          // * must go to verification:
                          Get.find<VerificationController>().isPressed.value =
                              true;
                          // * goes to before-verification mode:
                          Get.toNamed(kLoginScreenRoute);
                        } else {
                          // * data was not accepted
                          //TODO snack bar/alert Dialog error
                        }
                      },
                    ),
                    // * log in text:
                    LinkedStringWidget(
                        firstText: kDontHaveAnAccountText.tr,
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
