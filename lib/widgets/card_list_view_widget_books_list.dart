import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../model/user.dart';

class CardListViewWidgetBooksList extends StatelessWidget {
  CardListViewWidgetBooksList({
    super.key,
  });

  // * testing book values:
  final User currentUser = User(
    userId: 'userId',
    userName: 'userName',
    userPhoneNumber: 'userPhoneNumber',
    userEmail: 'userEmail',
    lastSyncDate: 'lastSyncDate',
    userCreationDate: 'userCreationDate',
  );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.width,
      child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return const Card(
              child: ListTile(),
            );
          }),
    );
  }
}
