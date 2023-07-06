import 'dart:math';

import 'package:animated_icon/animated_icon.dart';
import 'package:cash_book/constants/sizes.dart';
import 'package:flutter/material.dart';
import '../constants/colors.dart';
import '../widgets/left_icon_list_tile_widget.dart';
import '../widgets/sized_floating_action_button_widget.dart';

class BookScreen extends StatelessWidget {
  const BookScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // * app bar
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: Icon(
            Icons.book_outlined,
            color: kPrimaryColor,
            size: 40.0,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: const Text(
          'name',
          //Get.find<CurrentUserController>().currentUser.value!.userName,
          style: TextStyle(color: kMainSubtitle),
        ),
      ),
      // * List view:
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: kWidth,
              height: kHeight * 0.65,
              color: Colors.white60,
              padding: const EdgeInsets.only(bottom: 20.0),
              child: ListView.builder(
                itemCount: 8,
                itemBuilder: (context, index) {
                  return LeftIconListTileWidget(
                    subtitle: 'created by You on Sunday',
                    title: '10000',
                    onTap: () {},
                    icon: index % 2 == 0 ? Icons.add : Icons.remove,
                    backgroundColor: index % 2 == 0 ? Colors.green : Colors.red,
                  );
                },
              ),
            ),
            // * bottom container(add entry):
            Container(
              color: Colors.white,
              child: Column(
                children: [
                  Text(
                    'Add an Entry',
                    style: kSmallTitlesStyle,
                  ),
                  // *  animated icon:
                  AnimateIcon(
                    key: UniqueKey(),
                    onTap: () {},
                    iconType: IconType.continueAnimation,
                    height: kIconButtonSize,
                    width: kIconButtonSize,
                    color: kPrimaryColor,
                    animateIcon: AnimateIcons.downArrow,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                const Text(
                                  'Record ',
                                  style: TextStyle(fontSize: 18),
                                ),
                                Text(
                                  'Income',
                                  style: TextStyle(
                                      color: Colors.green.shade800,
                                      fontSize: 18),
                                ),
                              ],
                            ),
                            SizedFABWidget(
                              buttonHeight: kHeight * 0.07,
                              buttonWidth: kWidth * 0.4,
                              onPressed: () {},
                              buttonIcon: Icons.add,
                              buttonText: 'Cash In',
                              buttonColor: Colors.green,
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                const Text(
                                  'Record ',
                                  style: TextStyle(fontSize: 18),
                                ),
                                Text(
                                  'Expense',
                                  style: TextStyle(
                                      color: Colors.red.shade900, fontSize: 18),
                                ),
                              ],
                            ),
                            SizedFABWidget(
                              buttonHeight: kHeight * 0.07,
                              buttonWidth: kWidth * 0.4,
                              onPressed: () {},
                              buttonIcon: Icons.remove,
                              buttonText: 'Cash Out',
                              buttonColor: Colors.red,
                            ),
                          ],
                        ),
                      ]),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
