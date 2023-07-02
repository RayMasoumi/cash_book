import 'package:cash_book/constants/sizes.dart';
import 'package:cash_book/widgets/align_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CardListViewWidgetBooksList extends StatelessWidget {
  final List<String> test = ['1', '2', '3', '4', '5', '6', '7'];

  CardListViewWidgetBooksList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.width,
      height: kBottomListHeight,
      child: ListView.builder(
          itemCount: test.length,
          itemBuilder: (context, index) {
            return AlignWidget(index: index);
          }),
    );
  }
}
