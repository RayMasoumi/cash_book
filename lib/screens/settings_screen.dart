import 'package:flutter/material.dart';
import 'package:flutter_dropdown/flutter_dropdown.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../controllers/translate_controller.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('language'),
            DropDown(
              items: const ['English', 'فارسی'],
              initialValue: 'English',
              onChanged: (value) {
                switch (value) {
                  case 'English':
                    Get.find<TranslateController>().changeLanguage('en');
                    break;
                  case 'فارسی':
                    Get.find<TranslateController>().changeLanguage('fa');
                    break;
                }
              },
            ),
          ],
        ),
      ],
    );
  }
}
