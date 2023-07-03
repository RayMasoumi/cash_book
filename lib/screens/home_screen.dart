import 'package:cash_book/constants/colors.dart';
import 'package:cash_book/constants/sizes.dart';
import 'package:cash_book/constants/strings.dart';
import 'package:cash_book/screens/add_book_bottom_sheet_screen.dart';
import 'package:cash_book/widgets/left_icon_list_tile_widget.dart';
import 'package:cash_book/widgets/sized_floating_action_button_widget.dart';
import 'package:flutter/material.dart';

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
      body: SafeArea(
        child: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) {
            return LeftIconListTileWidget(
              lastModified: 'yesterday',
              title: 'Business',
              onTap: () {},
            );
          },
        ),
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
