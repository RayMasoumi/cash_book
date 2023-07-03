import 'package:cash_book/constants/colors.dart';
import 'package:cash_book/constants/sizes.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(
                      vertical: kTopMargin, horizontal: 35),
                  height: kIconContainerSide,
                  width: kIconContainerSide,
                  decoration: BoxDecoration(
                    borderRadius: kBorderRadius15,
                    color: Colors.white,
                    border: Border.all(color: kBorderColor),
                  ),
                ),
                Text(
                  'Sign up',
                  style: TextStyle(fontWeight: FontWeight.w900, fontSize: 40),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
