import 'package:cash_book/constants/colors.dart';
import 'package:cash_book/constants/sizes.dart';
import 'package:cash_book/constants/strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class AddBookBottomSheet extends StatelessWidget {
  const AddBookBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(seconds: 10),
      child: Container(
        padding: MediaQuery.of(context).viewInsets,
        color: kTransparentBottomSheetBackground,
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20.0),
              topLeft: Radius.circular(20.0),
            ),
          ),
          child: Container(
            margin: EdgeInsets.only(
                top: k30Width,
                left: k40Height,
                right: k40Height,
                bottom: k30Width),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Text(
                  kNewBookTitle,
                  style: kSmallTitlesStyle,
                  textAlign: TextAlign.center,
                ),
                TextField(
                  textAlign: TextAlign.center,
                  onChanged: (value) {},
                  decoration: InputDecoration(
                    hintText: kBookNameHint,
                    focusedBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: kSecondaryColor,
                      ),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide:
                          BorderSide(color: kPrimaryColor, width: k3Width),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          const MaterialStatePropertyAll(kPrimaryColor),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: kBorderRadius15,
                        ),
                      ),
                    ),
                    onPressed: () {
                      Get.toNamed(kBookScreenRoute);
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        kAddButtonText,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 25.0,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
