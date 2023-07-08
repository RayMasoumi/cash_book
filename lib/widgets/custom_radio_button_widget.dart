import 'package:cash_book/constants/colors.dart';
import 'package:custom_radio_grouped_button/custom_radio_grouped_button.dart';
import 'package:flutter/material.dart';

class CustomRadioButtonWidget extends StatelessWidget {
  const CustomRadioButtonWidget({
    required this.buttonLabels,
    required this.buttonValues,
    required this.controller,
    required this.defaultValue,
    super.key,
  });

  final List<String> buttonLabels;
  final List<dynamic> buttonValues;
  final defaultValue;
  final controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: CustomRadioButton(
        elevation: 0,
        enableShape: true,
        absoluteZeroSpacing: true,
        unSelectedColor: Theme.of(context).canvasColor,
        unSelectedBorderColor: kPrimaryColor,
        buttonLables: buttonLabels,
        buttonValues: buttonValues,
        margin: const EdgeInsets.symmetric(horizontal: 10.0),
        defaultSelected: defaultValue,
        buttonTextStyle: const ButtonTextStyle(
            selectedColor: Colors.white,
            unSelectedColor: kPrimaryColor,
            textStyle: TextStyle(fontSize: 16)),
        radioButtonValue: (value) {
          controller.value = value;
        },
        selectedColor: kPrimaryColor,
        selectedBorderColor: kPrimaryColor,
      ),
    );
  }
}
