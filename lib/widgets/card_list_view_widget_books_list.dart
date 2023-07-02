import 'package:cash_book/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../constants/colors.dart';

class CardListViewWidgetBooksList extends StatelessWidget {
  final List<String> test = ['1', '2', '3', '4', '5', '6', '7'];

  CardListViewWidgetBooksList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.width,
      height: kHeight * 0.6,
      child: ListView.builder(
          itemCount: test.length,
          itemBuilder: (context, index) {
            return Align(
              heightFactor: 0.28,
              alignment: Alignment.topCenter,
              child: SizedBox(
                height: kHeight * 0.4,
                child: ListTile(
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(color: Colors.black12),
                    borderRadius: BorderRadius.circular(45),
                  ),
                  tileColor: getColor(index),
                ),
              ),
            );
          }),
    );
  }
}

// * a method to choose color:
Color getColor(int index) {
  Color color;
  switch (index % 5) {
    case 0:
      {
        color = kPastel1Color;
      }
      break;
    case 1:
      {
        color = kPastel5Color;
      }
      break;
    case 2:
      {
        color = kPastel4Color;
      }
      break;
    case 3:
      {
        color = kPastel3Color;
      }
      break;
    case 4:
      {
        color = kPastel2Color;
      }
      break;
    default:
      {
        color = kPastel1Color;
      }
      break;
  }
  return color;
}
