import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
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
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        height: 50,
        notchMargin: 5.0,
        activeColor: kPrimaryColor,
        icons: const [Icons.library_books, Icons.settings],
        activeIndex: 0,
        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.smoothEdge,
        iconSize: 30,
        gapWidth: kFABWidth,
        onTap: (index) {},
        //other params
      ),
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.only(left: 20.0),
          child: Icon(
            Icons.supervised_user_circle,
            color: kPrimaryColor,
            size: 40.0,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: const Text(
          'name',
          style: TextStyle(color: kMainSubtitle),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: Icon(
              Icons.person_add_alt_1,
              size: 30.0,
              color: kPrimaryColor,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 20.0),
          child: ListView.builder(
            itemCount: 8,
            itemBuilder: (context, index) {
              return LeftIconListTileWidget(
                lastModified: 'yesterday',
                title: 'Business',
                onTap: () {},
              );
            },
          ),
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
