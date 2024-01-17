import 'package:ekyrizky_portfolio/utils/constants.dart';
import 'package:ekyrizky_portfolio/utils/screen_helper.dart';
import 'package:flutter/material.dart';

class TextImageAtom extends StatelessWidget {
  const TextImageAtom({
    super.key,
    required this.image,
    required this.text,
    required this.imageSize,
    required this.textSize,
  });

  final String image;
  final String text;
  final double imageSize;
  final double textSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          image,
          width: imageSize,
          height: imageSize,
          fit: BoxFit.cover,
        ),
        SizedBox(width: ScreenHelper.isDesktop(context) ? 10 : 4),
        Text(
          text,
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
