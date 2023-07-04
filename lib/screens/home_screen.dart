import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:cash_book/constants/colors.dart';
import 'package:cash_book/constants/sizes.dart';
import 'package:cash_book/constants/strings.dart';
import 'package:cash_book/screens/add_book_bottom_sheet_screen.dart';
import 'package:cash_book/screens/books_list_screen.dart';
import 'package:cash_book/screens/settings_screen.dart';
import 'package:cash_book/widgets/sized_floating_action_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/navigation_bar_controller.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: SizedFABWidget(
        buttonColor: kPrimaryColor,
        buttonHeight: kFABHeight,
        buttonWidth: kFABWidth,
        buttonIcon: Icons.add,
        buttonText: kAddBookText,
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            context: context,
            builder: (context) => const AddBookBottomSheet(),
          );
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
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
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.only(left: 20.0),
          child: Icon(
            Icons.supervised_user_circle,
            color: kPrimaryColor,
            size: 40.0,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: const Text(
          'name',
          style: TextStyle(color: kMainSubtitle),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: Icon(
              Icons.person_add_alt_1,
              size: 30.0,
              color: kPrimaryColor,
            ),
          ),
        ],
      ),
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
