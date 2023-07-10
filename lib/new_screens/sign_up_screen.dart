import 'package:cash_book/new_screens/cash_book_text_field_widget.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.fromLTRB(0, 0, 69.5, 19),
          child: const Text(
            'WELCOME TO CASH BOOK ',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w500,
              height: 1.26,
              color: Color(0xff000000),
            ),
          ),
        ),
        // child: CashBookTextFieldWidget(),
      ),
    );
  }
}
