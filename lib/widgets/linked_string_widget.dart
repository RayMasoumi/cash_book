import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LinkedStringWidget extends StatelessWidget {
  final String firstText;
  final String linkedText;
  final String destinationRoute;

  const LinkedStringWidget({
    super.key,
    required this.firstText,
    required this.linkedText,
    required this.destinationRoute,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(firstText),
        GestureDetector(
          onTap: () {
            Get.toNamed(destinationRoute);
          },
          child: Text(
            linkedText,
            style: const TextStyle(
                fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),
          ),
        ),
      ],
    );
  }
}
