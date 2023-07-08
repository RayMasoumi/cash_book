import 'package:cash_book/widgets/left_icon_list_tile_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';

import '../constants/colors.dart';
import '../constants/strings.dart';
import '../controllers/current_user_controller.dart';
import '../model/user.dart';

class BooksListScreen extends StatelessWidget {
  const BooksListScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 20.0),
        child: Obx(() {
          return ListView.builder(
            itemCount: Get.find<CurrentUserController>()
                .currentUser
                .value!
                .userBooks
                .length,
            itemBuilder: (context, index) {
              return LeftIconListTileWidget(
                subtitle: Get.find<CurrentUserController>()
                    .currentUser
                    .value!
                    .userBooks[index]
                    .bookLastModified,
                title: Get.find<CurrentUserController>()
                    .currentUser
                    .value!
                    .userBooks[index]
                    .bookName,
                onTap: () {},
                backgroundColor: kPrimaryColor,
                icon: Get.find<CurrentUserController>()
                        .currentUser
                        .value!
                        .userBooks[index]
                        .privateBook
                    ? Icons.lock_outline
                    : Icons.people_alt_outlined,
              );
            },
          );
        }),
      ),
    );
  }
}

/**
 * * The problem with overlapping widgets happened because they kept rebuilding
 * ! this is a hack not a solution and it is NOT optimized
 * $child: SingleChildScrollView(
 * $  child: Column(
 * $    children: [for (int i = 0; i < 6; i++) CardListViewWidget()],
 * $      ),
 * $  ),
 */
