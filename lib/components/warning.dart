import 'package:ekyrizky_portfolio/utils/constants.dart';
import 'package:ekyrizky_portfolio/utils/screen_helper.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Warning extends StatelessWidget {
  const Warning({super.key, required this.title, required this.assets});

  final String title;
  final String assets;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
            width: 32,
            height: 32,
            child: Lottie.asset(
              assets,
              fit: BoxFit.cover,
            )),
        ScreenHelper.screenWidth(context) < 550
            ? Expanded(
                child: Text(
                  title,
                  style: TextStyle(
                    color: kSecondaryColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                  textAlign: TextAlign.center,
                ),
              )
            : Text(
                title,
                style: TextStyle(
                  color: kSecondaryColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
      ],
    );
  }
}
