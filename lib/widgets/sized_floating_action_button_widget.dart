import 'package:cash_book/constants/colors.dart';
import 'package:cash_book/constants/sizes.dart';
import 'package:flutter/material.dart';

class SizedFABWidget extends StatelessWidget {
  const SizedFABWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: kFABWidth,
      height: kFABHeight,
      child: FloatingActionButton(
        shape: RoundedRectangleBorder(
          borderRadius: kBorderRadius45,
        ),
        onPressed: () {},
        elevation: 10.0,
        backgroundColor: kPrimaryColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'ADD BOOK  ',
              style: kIconTextStyle,
            ),
            Icon(Icons.add, size: kIconButtonSize),
          ],
        ),
      ),
    );
  }
}
