import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../constants/colors.dart';

class CardListViewWidgetBooksList extends StatelessWidget {
  // * testing book values:
  // final User currentUser = User(
  //   userId: 'userId',
  //   userName: 'userName',
  //   userPhoneNumber: 'userPhoneNumber',
  //   userEmail: 'userEmail',
  //   lastSyncDate: 'lastSyncDate',
  //   userCreationDate: 'userCreationDate',
  // );

  final List<String> test = ['1', '2', '3', '4', '5', '6', '7'];

  CardListViewWidgetBooksList({super.key});

  @override
  Widget build(BuildContext context) {
    // currentUser.userBooks.add(
    //   Book(
    //       bookId: 'bookId',
    //       bookName: 'bookName',
    //       privateBook: true,
    //       bookLastModified: 'bookLastModified',
    //       bookOwnerUserId: 'bookOwnerUserId'),
    // );
    // currentUser.userBooks.add(
    //   Book(
    //       bookId: 'bookId',
    //       bookName: 'bookName',
    //       privateBook: true,
    //       bookLastModified: 'bookLastModified',
    //       bookOwnerUserId: 'bookOwnerUserId'),
    // );
    // currentUser.userBooks.add(
    //   Book(
    //       bookId: 'bookId',
    //       bookName: 'bookName',
    //       privateBook: true,
    //       bookLastModified: 'bookLastModified',
    //       bookOwnerUserId: 'bookOwnerUserId'),
    // );

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

    return SizedBox(
      width: Get.width,
      child: ListView.builder(
          itemCount: test.length,
          itemBuilder: (context, index) {
            return Card(
              color: getColor(index),
              child: const ListTile(),
            );
          }),
    );
  }
}
