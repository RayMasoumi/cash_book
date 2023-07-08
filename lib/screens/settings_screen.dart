import 'package:cash_book/constants/strings.dart';
import 'package:cash_book/controllers/book_controller.dart';
import 'package:cash_book/controllers/current_user_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dropdown/flutter_dropdown.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../controllers/translate_controller.dart';

class SettingsScreen extends GetView<CurrentUserController> {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // * Language Row
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // * title
            Text(kLanguageTitle.tr),
            // * choose language
            DropDown(
              items: const ['English', 'فارسی'],
              initialValue: GetStorage().read(kLanguageTitle.tr) == 'fa'
                  ? 'فارسی'
                  : 'English',
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
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // * title
            const Text('id'),
            Text(controller.currentUser.value!.userId),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // * title
            const Text('name'),
            Text(controller.currentUser.value!.userName),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // * title
            const Text('phone number'),
            Text(controller.currentUser.value!.userPhoneNumber),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // * title
            const Text('email'),
            Text(controller.currentUser.value!.userEmail),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // * title
            const Text('last synced date'),
            Text(controller.currentUser.value!.lastSyncDate),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // * title
            const Text('user creation date'),
            Text(controller.currentUser.value!.userCreationDate),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // * title
            const Text('books'),
            Text(Get.find<BookController>().userBooks.toString()),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // * title
            const Text('disabled'),
            Text(controller.currentUser.value!.isDisabled.toString()),
          ],
        ),
      ],
    );
  }
}
