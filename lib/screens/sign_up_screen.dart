import 'package:cash_book/constants/strings.dart';
import 'package:cash_book/widgets/app_bar_title_widget.dart';
import 'package:cash_book/widgets/linked_string_widget.dart';
import 'package:cash_book/widgets/submit_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
                  title: 'Sign up',
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
                      title: 'Username',
                      keyBoardType: TextInputType.text,
                      hintText: 'Type In a Username',
                      controller: TextEditingController(),
                    ),
                    RoundTextFieldWidget(
                      title: 'Phone Number',
                      keyBoardType: TextInputType.number,
                      hintText: '+981234567890',
                      controller: TextEditingController(),
                    ),
                    RoundTextFieldWidget(
                      keyBoardType: TextInputType.emailAddress,
                      title: 'E-mail',
                      hintText: 'cashBook@mail.com',
                      controller: TextEditingController(),
                    ),
                    // * submit button:
                    RoundedSubmitButtonWidget(
                      text: 'Create Account',
                      onPressed: () {
                        Get.toNamed(kHomeScreenRoute);
                      },
                    ),
                    // * log in text:
                    const LinkedStringWidget(
                      firstText: 'Already have an account? ',
                      linkedText: 'log in',
                      destinationRoute: kLoginScreenRoute,
                    ),
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
