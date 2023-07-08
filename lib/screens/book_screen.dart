import 'package:animated_icon/animated_icon.dart';
import 'package:cash_book/constants/enums.dart';
import 'package:cash_book/constants/sizes.dart';
import 'package:cash_book/constants/strings.dart';
import 'package:cash_book/controllers/add_entry_text_field_conrtoller.dart';
import 'package:cash_book/controllers/book_controller.dart';
import 'package:cash_book/methods/get_current_book_entries_method.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../constants/colors.dart';
import '../controllers/entry_controller.dart';
import '../widgets/back_icon_button_widget.dart';
import '../widgets/left_icon_list_tile_widget.dart';
import '../widgets/sized_floating_action_button_widget.dart';

class BookScreen extends StatelessWidget {
  const BookScreen({super.key});

  @override
  Widget build(BuildContext context) {
    getCurrentBookEntries();
    return Scaffold(
      // * app bar
      appBar: AppBar(
        leading: const BackIconButtonWidget(),
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Icon(
              Icons.book_outlined,
              color: kPrimaryColor,
              size: 40.0,
            ),
          ),
        ],
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Text(
          Get.find<BookController>().currentBook.value!.bookName,
          style: const TextStyle(color: kMainSubtitle),
        ),
      ),

      body: SafeArea(
        child: Column(
          children: [
            Container(
              // * List view:
              width: kWidth,
              height: kHeight * 0.65,
              color: Colors.white60,
              padding: const EdgeInsets.only(bottom: 20.0),
              child: Obx(() {
                return ListView.builder(
                  itemCount:
                      Get.find<EntryController>().currentBookEntries.length,
                  itemBuilder: (context, index) {
                    return LeftIconListTileWidget(
                      subtitle: Get.find<EntryController>()
                          .currentBookEntries[index]
                          .entryLastModified,
                      title: Get.find<EntryController>()
                          .currentBookEntries[index]
                          .entryAmount
                          .toString(),
                      onTap: () {},
                      icon: Get.find<EntryController>()
                                  .currentBookEntries[index]
                                  .entryType ==
                              EntryType.cashIn
                          ? Icons.add
                          : Icons.remove,
                      backgroundColor: kSecondaryColor,
                    );
                  },
                );
              }),
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
                            // * cash in button
                            SizedFABWidget(
                              heroTag: 'cashInBtn',
                              buttonHeight: kHeight * 0.07,
                              buttonWidth: kWidth * 0.4,
                              onPressed: () {
                                Get.find<EntryController>().isCashIn.value =
                                    true;
                                Get.find<AddEntryTextFieldController>()
                                    .addEntryDescription
                                    ?.clear();
                                Get.find<AddEntryTextFieldController>()
                                    .addEntryAmount
                                    ?.clear();
                                Get.toNamed(kAddNewEntryScreen);
                              },
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
                            // * cash out button:
                            SizedFABWidget(
                              heroTag: 'cashOutBtn',
                              buttonHeight: kHeight * 0.07,
                              buttonWidth: kWidth * 0.4,
                              onPressed: () {
                                Get.find<EntryController>().isCashIn.value =
                                    false;
                                Get.find<AddEntryTextFieldController>()
                                    .addEntryDescription
                                    ?.clear();
                                Get.find<AddEntryTextFieldController>()
                                    .addEntryAmount
                                    ?.clear();
                                Get.toNamed(kAddNewEntryScreen);
                              },
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
