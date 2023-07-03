import 'package:cash_book/constants/colors.dart';
import 'package:cash_book/constants/sizes.dart';
import 'package:cash_book/widgets/icon_with_back_ground_widget.dart';
import 'package:flutter/material.dart';

class LeftIconListTileWidget extends StatelessWidget {
  final String title;
  final String lastModified;
  final Function() onTap;

  LeftIconListTileWidget({
    super.key,
    required this.title,
    required this.lastModified,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 20.0),
      child: GestureDetector(
        onTap: onTap,
        child: ClipRRect(
          borderRadius: kBorderRadius15,
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: kBorderColor),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: kPrimaryColor.withOpacity(0.5),
                  blurRadius: 15.0, // soften the shadow
                  offset: const Offset(
                    0.0, // Move to right 5  horizontally
                    2.0, // Move to bottom 5 Vertically
                  ),
                ),
              ],
            ),
            margin: EdgeInsets.only(bottom: kTileBottomMargin),
            height: kIconContainerSide,
            child: Row(
              children: <Widget>[
                const IconWithBackGroundWidget(
                  icon: Icons.downloading,
                  backgroundColor: kPrimaryColor,
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(title),
                      Text(lastModified, style: kDescriptionStyle)
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
      ),
    );
  }
}
