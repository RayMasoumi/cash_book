import 'package:cash_book/constants/sizes.dart';
import 'package:cash_book/controllers/drop_down_controller.dart';
import 'package:cash_book/controllers/radio_button_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dropdown/flutter_dropdown.dart';
import 'package:get/get.dart';

import '../constants/colors.dart';
import '../constants/enums.dart';
import '../controllers/add_entry_text_field_conrtoller.dart';
import '../widgets/center_hint_text_field_widget.dart';
import '../widgets/custom_radio_button_widget.dart';
import '../widgets/rounded_stretched_button_widget.dart';

class AddNewEntryScreen extends StatelessWidget {
  const AddNewEntryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: const Icon(
              Icons.arrow_back_ios,
              color: kPrimaryColor,
              size: 30.0,
            ),
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: const Text(
          'Add Entry',
          //TODO cash in/cash out entry
          style: TextStyle(color: kMainSubtitle),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              //TODO date and time picker
              // * amount field
              CenterHintTextFieldWidget(
                hintText: 'Enter the amount money',
                controller:
                    Get.find<AddEntryTextFieldController>().addEntryAmount,
              ),
              SizedBox(
                height: kHeight * 0.05,
              ),
              // * description filed
              CenterHintTextFieldWidget(
                hintText: 'Anything you need to add?',
                controller:
                    Get.find<AddEntryTextFieldController>().addEntryDescription,
              ),
              //TODO attach image
              // *pick category (drop down or...):
              DropDown(
                hint: Text(
                  'Pick the Category',
                  style: kIntroSubtitleStyle,
                ),
                // ? how to fix the String
                items: Category.values,
                onChanged: (value) {
                  switch (value) {
                    case Category.business:
                      Get.find<DropDownController>().pickedCategory;
                      break;
                    case Category.health:
                      Get.find<DropDownController>().pickedCategory;
                      break;
                    default:
                      break;
                  }
                },
              ),
              // * payment Mode (selectable button):
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Select Payment Method',
                    style: kIntroSubtitleStyle,
                  ),
                  CustomRadioButtonWidget(
                    // ? should we use the enum here instead? doesn't work
                    buttonLabels: const ['Cash', 'Online', 'Bank'],
                    buttonValues: const [0, 1, 2],
                    controller:
                        Get.find<RadioButtonController>().selectedPaymentMethod,
                  ),
                  SizedBox(
                    height: kHeight * 0.1,
                  ),
                  Container(
                    alignment: Alignment.bottomCenter,
                    child: StretchedButtonWidget(
                      buttonText: 'ADD ENTRY',
                      onPressed: () {
                        //TODO
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
