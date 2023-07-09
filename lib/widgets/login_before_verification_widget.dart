import 'package:cash_book/controllers/log_in_text_field_controller.dart';
import 'package:cash_book/waiting%20code/api_log_in.dart';
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
              // $ await apiLoginUser(Get.find<LoginTextFieldController>().loginPhoneNumber!.text) ? Get.find<VerificationController>().isPressed.value = true : const SnackBar(content: Text('info not correct'));
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
