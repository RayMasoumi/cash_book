import 'package:cash_book/constants/sizes.dart';
import 'package:flutter/material.dart';
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
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Sign up',
                    style: kBigTitleStyle,
                  ),
                ),
              ],
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    // * textField and description
                    RoundTextFieldWidget(
                      title: 'UserName',
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
