import 'package:cash_book/constants/colors.dart';
import 'package:cash_book/constants/sizes.dart';
import 'package:cash_book/screens/left_icon_list_tile_widget.dart';
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
        buttonText: 'ADD BOOK  ',
        onPressed: () {},
      ),
      body: SafeArea(
        child: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) {
            return const LeftIconListTileWidget();
          },
        ),
      ),
    );
  }
}
