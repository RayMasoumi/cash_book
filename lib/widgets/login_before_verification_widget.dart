import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constants/strings.dart';
import '../controllers/verification_controller.dart';
import 'linked_string_widget.dart';
import 'round_text_field_widget.dart';
import 'submit_button_widget.dart';

class BeforeVerificationLoginWidget extends StatelessWidget {
  const BeforeVerificationLoginWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        // * textField and description

        RoundTextFieldWidget(
          title: 'Enter Your Phone Number'.tr,
          keyBoardType: TextInputType.number,
          hintText: '+981234567890',
          controller: TextEditingController(),
        ),

        // * Send SMS button:
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40.0),
          child: RoundedSubmitButtonWidget(
            text: 'Send SMS'.tr,
            onPressed: () {
              Get.find<VerificationController>().isPressed.value = true;
            },
          ),
        ),
        // * Sign up text:
        LinkedStringWidget(
          firstText: 'Don\'t have an account? '.tr,
          linkedText: kSignUpTitle,
          onTap: () => Get.toNamed(kSignUpScreenRoute),
        ),
      ],
    );
  }
}
