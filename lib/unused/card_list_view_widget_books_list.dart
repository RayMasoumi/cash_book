import 'package:cash_book/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'align_widget.dart';

class CardListViewWidget extends StatelessWidget {
  final List<String> test = [
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    '10',
    '11',
    '12',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    '10',
    '11',
    '12'
  ];

  CardListViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.width,
      height: kBottomListHeight,
      child: ListView.builder(
          itemCount: test.length,
          itemBuilder: (context, index) {
            return AlignWidget(
              list: test,
              index: index,
            );
          }),
    );
  }
}
