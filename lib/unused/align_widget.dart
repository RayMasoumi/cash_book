import 'package:cash_book/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../methods/get_color_method.dart';

class AlignWidget extends StatelessWidget {
  final int index;
  final List list;

  const AlignWidget({required this.index, required this.list, super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      heightFactor: 0.28,
      alignment: Alignment.topCenter,
      child: SizedBox(
        height: kHeight * 0.4,
        child: ListTile(
          shape: RoundedRectangleBorder(
            side: const BorderSide(color: Colors.black12),
            borderRadius: kBorderRadius45,
          ),
          tileColor: getColor(index),
        ),
      ),
    );
  }
}
