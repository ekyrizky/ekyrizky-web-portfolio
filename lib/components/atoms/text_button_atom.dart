import 'package:ekyrizky_portfolio/utils/constants.dart';
import 'package:ekyrizky_portfolio/utils/screen_helper.dart';
import 'package:flutter/material.dart';

class TextButtonAtom extends StatelessWidget {
  const TextButtonAtom({
    super.key,
    required this.text,
    required this.onTap,
  });

  final String text;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(kPrimaryColor),
        padding: MaterialStateProperty.all<EdgeInsets>(
          EdgeInsets.symmetric(
            horizontal: ScreenHelper.isMobile(context) ? 6 : 8,
            vertical: ScreenHelper.isMobile(context) ? 10 : 16,
          ),
        ),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
      child: GestureDetector(
        onTap: () {
          onTap();
        },
        child: Text(
          text,
          style: const TextStyle(
            color: kSecondaryColor,
            fontSize: 14,
          ),
        ),
      ),
    );
  }
}
