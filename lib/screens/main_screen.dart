import 'package:bubble_tab_indicator/bubble_tab_indicator.dart';
import 'package:cash_book/constants/colors.dart';
import 'package:cash_book/constants/sizes.dart';
import 'package:cash_book/methods/size_calculator_method.dart';
import 'package:cash_book/widgets/icons_row_widget.dart';
import 'package:cash_book/widgets/padded_divider.dart';
import 'package:cash_book/widgets/profile_container_widget.dart';
import 'package:cash_book/widgets/text_column_widget.dart';
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
            resizeToAvoidBottomInset: false,
            appBar: AppBar(
              elevation: 0,
              backgroundColor: Colors.white,
              bottom: PreferredSize(
                preferredSize: Size.fromHeight(
                  heightCalculator(170),
                ),
                // * a column for the whole app bar:
                child: Column(
                  children: [
                    // *row for the profile and emojis..
                    Padding(
                      padding: EdgeInsets.only(
                        left: widthCalculator(29),
                        right: widthCalculator(28),
                        top: heightCalculator(45),
                      ),
                      // * appbar row
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // * first the avatar:
                          Row(
                            children: [
                              const ProfileContainerWidget(),
                              SizedBox(
                                width: widthCalculator(6),
                              ),
                              const TextColumnWidget(
                                  title: 'Sara', subtitle: 'admin'),
                            ],
                          ),
                          const Spacer(),
                          const IconsRowWidget()
                        ],
                      ),
                    ),
                    // * the divider line:
                    const PaddedDivider(
                        leftPadding: 28,
                        rightPadding: 28,
                        topPadding: 15,
                        bottomPadding: 14,
                        thickness: 3),
                    Container(
                      alignment: Alignment.center,
                      child: Container(
                        height: heightCalculator(38),
                        width: widthCalculator(312),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(9),
                          color: Theme.of(context).scaffoldBackgroundColor,
                          boxShadow: [
                            BoxShadow(
                              offset: Offset.zero,
                              blurRadius: 14,
                              color: Colors.grey.withOpacity(0.20),
                            ),
                          ],
                        ),
                        child: TabBar(
                          labelColor: Colors.white,
                          unselectedLabelColor: Colors.black,
                          indicator: const BubbleTabIndicator(
                            indicatorHeight: 25.0,
                            tabBarIndicatorSize: TabBarIndicatorSize.tab,
                            indicatorColor: kPrimaryColor,
                            indicatorRadius: 9,
                          ),
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
                    const PaddedDivider(
                        leftPadding: 28,
                        rightPadding: 28,
                        topPadding: 14,
                        bottomPadding: 21,
                        thickness: 1),
                  ],
                ),
              ),
            ),
            body: TabBarView(
              children: [
                // Replace with the contents of Tab 1
                Center(
                  child: ListView.builder(itemBuilder: (context, index) {
                    return Container(
                      height: heightCalculator(70),
                      margin: EdgeInsets.only(
                        left: widthCalculator(28),
                        right: widthCalculator(28),
                        bottom: heightCalculator(20),
                      ),
                      decoration: BoxDecoration(
                        color: Theme.of(context).scaffoldBackgroundColor,
                        borderRadius: BorderRadius.circular(13),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset.zero,
                            blurRadius: 14,
                            color: Colors.grey.withOpacity(0.20),
                          ),
                        ],
                      ),
                      child: const ListTile(
                        leading: Column(
                          children: [
                            Text('Shop'),
                            Text('hi hi hi  hi hi hi hi'),
                          ],
                        ),
                        trailing: Column(
                          children: [
                            Icon(Icons.more_horiz_rounded),
                            Text('0'),
                          ],
                        ),
                      ),
                    );
                  }),
                ),
                // Replace with the contents of Tab 2
                const Center(
                  child: Text('Tab 2 Content'),
                ),
                // Replace with the contents of Tab 3
                const Center(
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
