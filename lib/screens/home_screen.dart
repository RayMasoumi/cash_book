import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:cash_book/constants/colors.dart';
import 'package:cash_book/constants/sizes.dart';
import 'package:cash_book/constants/strings.dart';
import 'package:cash_book/controllers/add_book_text_field_controller.dart';
import 'package:cash_book/screens/add_book_bottom_sheet_screen.dart';
import 'package:cash_book/screens/books_list_screen.dart';
import 'package:cash_book/screens/settings_screen.dart';
import 'package:cash_book/widgets/sized_floating_action_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';

import '../controllers/current_user_controller.dart';
import '../controllers/navigation_bar_controller.dart';
import '../model/user.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // * add book floating action button
      floatingActionButton: SizedFABWidget(
        buttonColor: kPrimaryColor,
        buttonHeight: kFABHeight,
        buttonWidth: kFABWidth,
        buttonIcon: Icons.add,
        buttonText: kAddBookText.tr,
        onPressed: () {
          Get.find<AddBookTextFieldController>().addBookName?.clear();
          showModalBottomSheet(
            isScrollControlled: true,
            context: context,
            builder: (context) => const AddBookBottomSheet(),
          );
        },
      ),
      // * location of fab
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      // * Navigation bar
      bottomNavigationBar: Obx(() {
        return AnimatedBottomNavigationBar(
            height: 50,
            notchMargin: 5.0,
            activeColor: kPrimaryColor,
            icons: const [Icons.library_books, Icons.settings],
            activeIndex: Get.find<NavigationBarController>().index.value,
            gapLocation: GapLocation.center,
            notchSmoothness: NotchSmoothness.smoothEdge,
            iconSize: 30,
            gapWidth: kFABWidth,
            onTap: (index) {
              Get.find<NavigationBarController>().index.value = index;
            });
      }),
      // * app bar
      // ? couldn't extract
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: Icon(
            Icons.account_circle_rounded,
            color: kPrimaryColor,
            size: 40.0,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Text(
          Get.find<CurrentUserController>().currentUser.value!.userName,
          style: const TextStyle(color: kMainSubtitle),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Icon(
              Icons.person_add_alt_1_outlined,
              size: 30.0,
              color: kPrimaryColor,
            ),
          ),
        ],
      ),
      // * screens of navigation bar
      body: Obx(() {
        final int currentIndex =
            Get.find<NavigationBarController>().index.value;

        switch (currentIndex) {
          case 0:
            return const BooksListScreen();
          case 1:
            return const SettingsScreen();
          default:
            return const BooksListScreen();
        }
      }),
    );
  }
}
