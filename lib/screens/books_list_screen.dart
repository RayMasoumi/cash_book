import 'package:cash_book/constants/strings.dart';
import 'package:cash_book/controllers/book_controller.dart';
import 'package:cash_book/widgets/left_icon_list_tile_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constants/colors.dart';

class BooksListScreen extends StatelessWidget {
  const BooksListScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final bookController = Get.find<BookController>();
    final userBooks = bookController.userBooks;
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 20.0),
        child: Obx(() {
          return ListView.builder(
            itemCount: userBooks.length,
            itemBuilder: (context, index) {
              return LeftIconListTileWidget(
                subtitle: userBooks[index].bookLastModified,
                title: userBooks[index].bookName,
                onTap: () {
                  Get.find<BookController>().currentBook.value =
                      userBooks[index];
                  Get.toNamed(kBookScreenRoute);
                },
                backgroundColor: kPrimaryColor,
                icon: userBooks[index].privateBook
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
