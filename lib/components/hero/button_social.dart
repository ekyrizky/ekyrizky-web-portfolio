import 'package:ekyrizky_portfolio/utils/constants.dart';
import 'package:flutter/material.dart';

class ButtonSocial extends StatelessWidget {
  const ButtonSocial({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        TextButton(
          onPressed: () {},
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(kPrimaryColor),
            padding: MaterialStateProperty.all<EdgeInsets>(
              EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            ),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6.0),
              ),
            ),
          ),
          child: Text(
            "Contact Me",
            style: TextStyle(
              color: kSecondaryColor,
              fontSize: 14,
            ),
          ),
        ),
        SizedBox(
          width: 16,
        ),
        GestureDetector(
          onTap: () {},
          child: MouseRegion(
            cursor: SystemMouseCursors.click,
            child: Image.asset(
              'assets/ic_linkedin.png',
              width: 30,
              height: 30,
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(
          width: 16,
        ),
        GestureDetector(
          onTap: () {},
          child: MouseRegion(
            cursor: SystemMouseCursors.click,
            child: Image.asset(
              'assets/ic_instagram.png',
              width: 30,
              height: 30,
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(
          width: 16,
        ),
        GestureDetector(
          onTap: () {},
          child: MouseRegion(
            cursor: SystemMouseCursors.click,
            child: Image.asset(
              'assets/ic_twitter.png',
              width: 30,
              height: 30,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}
