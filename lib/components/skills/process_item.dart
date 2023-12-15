import 'package:ekyrizky_portfolio/utils/constants.dart';
import 'package:ekyrizky_portfolio/utils/screen_helper.dart';
import 'package:flutter/material.dart';

class ProcessItem extends StatelessWidget {
  final String assets;
  final String title;
  const ProcessItem({
    required this.assets,
    required this.title,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double iconSize = ScreenHelper.isMobile(context) ? 24 : 30;
    final double padding = ScreenHelper.isMobile(context) ? 4 : 16;
    final double textSize = ScreenHelper.isMobile(context) ? 14 : 18;

    return Row(
      children: [
        Image.asset(
          assets,
          width: iconSize,
          height: iconSize,
          fit: BoxFit.cover,
        ),
        SizedBox(width: padding),
        Text(
          title,
          style: TextStyle(
            color: kPrimaryColor,
            fontSize: textSize,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
