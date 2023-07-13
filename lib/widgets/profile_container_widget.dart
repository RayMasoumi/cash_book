import 'package:cash_book/methods/size_calculator_method.dart';
import 'package:flutter/material.dart';

class ProfileContainerWidget extends StatelessWidget {
  const ProfileContainerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: heightCalculator(41),
      width: widthCalculator(46),
      decoration: BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor,
        borderRadius: BorderRadius.circular(8),
        boxShadow: const [
          BoxShadow(
            blurRadius: 17,
            color: Colors.black12,
            offset: Offset.zero,
          ),
        ],
      ),
      // * if the child is an avatar
      // child: const CircleAvatar(
      //   backgroundColor: kDisabledColor,
      //   radius: 0.05,
      // ),
      // *  if the child is an icon:
      child: const Icon(Icons.person),
    );
  }
}
