import 'package:cash_book/constants/colors.dart';
import 'package:cash_book/constants/sizes.dart';
import 'package:cash_book/constants/strings.dart';
import 'package:cash_book/widgets/custom_radio_button_widget.dart';
import 'package:cash_book/widgets/bold_big_title_widget.dart';
import 'package:cash_book/widgets/center_hint_text_field_widget.dart';
import 'package:cash_book/widgets/rounded_stretched_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/radio_button_controller.dart';

class AddBookBottomSheet extends StatelessWidget {
  const AddBookBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(seconds: 10),
      child: Container(
        padding: MediaQuery.of(context).viewInsets,
        color: kTransparentBottomSheetBackground,
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20.0),
              topLeft: Radius.circular(20.0),
            ),
          ),
          child: Container(
            margin: EdgeInsets.only(
                top: k30Width,
                left: k40Height,
                right: k40Height,
                bottom: k30Width),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                // * Title
                BoldBigTitleWidget(
                  title: kNewBookTitle.tr,
                ),
                // * TextField
                CenterHintTextFieldWidget(
                  hintText: kBookNameHint.tr,
                  controller: TextEditingController(),
                ),
                // * Private or Public radio button
                CustomRadioButtonWidget(
                  buttonLabels: [kPrivateText.tr, kPublicText.tr],
                  buttonValues: const [0, 1],
                  controller: Get.find<RadioButtonController>().selectedValue,
                ),
                // * add button
                StretchedButtonWidget(
                  buttonText: kAddButtonText.tr,
                  onPressed: () {
                    Get.toNamed(kBookScreenRoute);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
