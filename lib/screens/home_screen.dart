import 'package:cash_book/widgets/stacked_card_widget.dart';
import 'package:cash_book/widgets/sized_floating_action_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: const SizedFABWidget(),
      body: SafeArea(
        child: SizedBox(
          width: Get.width,
          child: Stack(
            children: <Widget>[
              StackedCardWidget(),
              Positioned(
                bottom: 50.0,
                left: 0.0,
                right: 0.0,
                child: Card(
                  margin: EdgeInsets.zero,
                  elevation: 3.0,
                  color: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  ),
                  child: Container(
                    width: double.infinity,
                    height: 200.0,
                  ),
                ),
              ),
              Positioned(
                bottom: -50.0,
                left: 0.0,
                right: 0.0,
                child: Card(
                  margin: EdgeInsets.zero,
                  elevation: 3.0,
                  color: Colors.orange,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  ),
                  child: Container(
                    width: double.infinity,
                    height: 200.0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
