import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constants/strings.dart';
import '../controllers/verification_controller.dart';
import '../widgets/linked_string_widget.dart';
import '../widgets/round_text_field_widget.dart';
import '../widgets/submit_button_widget.dart';

class AfterVerificationLoginWidget extends StatelessWidget {
  const AfterVerificationLoginWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        // * textField and description
        RoundTextFieldWidget(
          textAlign: TextAlign.center,
          title: 'Enter The 4-Digit Code You Received',
          keyBoardType: TextInputType.number,
          hintText: '_    _    _    _',
          controller: TextEditingController(),
        ),

        // * Log In button:
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40.0),
          child: RoundedSubmitButtonWidget(
            text: 'Submit',
            onPressed: () {},
          ),
        ),
        // * log in text:
        LinkedStringWidget(
          firstText: 'Not sure about your number? ',
          linkedText: 'Change it here',
          onTap: () {
            Get.find<VerificationController>().isPressed.value = false;
            Get.offNamed(kLoginScreenRoute);
          },
        ),
      ],
    );
  }
}
