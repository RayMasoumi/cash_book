import 'package:cash_book/widgets/default_padding.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: DefaultPadding(
          child: Column(),
        ),
      ),
    );
  }
}
