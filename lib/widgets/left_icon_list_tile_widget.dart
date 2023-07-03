import 'package:cash_book/constants/colors.dart';
import 'package:cash_book/constants/sizes.dart';
import 'package:cash_book/widgets/icon_with_back_ground_widget.dart';
import 'package:flutter/material.dart';

class LeftIconListTileWidget extends StatelessWidget {
  const LeftIconListTileWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 20.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black12),
          ),
          margin: const EdgeInsets.only(bottom: 9.0),
          height: 70,
          child: Row(
            children: <Widget>[
              IconWithBackGroundWidget(
                icon: Icons.downloading,
                backgroundColor: Colors.blue.shade600,
              ),
              const SizedBox(width: 10),
              const Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Test Title'),
                    Text('Test Video', style: TextStyle(color: Colors.grey))
                  ],
                ),
              ),
              Icon(
                Icons.arrow_forward_ios,
                color: kPrimaryColor,
                size: kIconButtonSize - 7,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
