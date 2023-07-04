import 'package:cash_book/widgets/after_verification_login_widget.dart';
import 'package:cash_book/widgets/login_before_verification_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../constants/strings.dart';
import '../controllers/verification_controller.dart';
import '../widgets/app_bar_title_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
                  title: kTitleLogin,
                ),
              ],
            ),
            Expanded(
              child: Obx(() {
                return SingleChildScrollView(
                  child: Get.find<VerificationController>().isPressed.value
                      ? const AfterVerificationLoginWidget()
                      : const BeforeVerificationLoginWidget(),
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
