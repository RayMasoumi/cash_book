import 'package:cash_book/widgets/card_list_view_widget_books_list.dart';
import 'package:cash_book/widgets/sized_floating_action_button_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: const SizedFABWidget(),
      body: SafeArea(
        child: Column(
          children: [
            const Spacer(),
            CardListViewWidgetBooksList(),
          ],
        ),
      ),
    );
  }
}
