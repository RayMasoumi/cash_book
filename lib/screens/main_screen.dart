import 'package:bubble_tab_indicator/bubble_tab_indicator.dart';
import 'package:cash_book/constants/colors.dart';
import 'package:cash_book/constants/sizes.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: DefaultTabController(
          length: 3, // Replace 3 with the actual number of tabs
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              bottom: PreferredSize(
                preferredSize: const Size.fromHeight(50.0),
                child: Container(
                  alignment: Alignment.center,
                  child: TabBar(
                    labelColor: Colors.white,
                    unselectedLabelColor: Colors.black,
                    tabs: [
                      Tab(
                        child: Text('Public', style: kTabTextStyle),
                      ),
                      Tab(
                        child: Text('Private', style: kTabTextStyle),
                      ),
                      Tab(
                        child: Text('Bookmark', style: kTabTextStyle),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            body: const TabBarView(
              children: [
                // Replace with the contents of Tab 1
                Center(
                  child: Text('Tab 1 Content'),
                ),
                // Replace with the contents of Tab 2
                Center(
                  child: Text('Tab 2 Content'),
                ),
                // Replace with the contents of Tab 3
                Center(
                  child: Text('Tab 3 Content'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
