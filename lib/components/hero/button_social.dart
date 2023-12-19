import 'package:ekyrizky_portfolio/utils/constants.dart';
import 'package:ekyrizky_portfolio/utils/screen_helper.dart';
import 'package:flutter/material.dart';
import 'dart:html' as html;

class ButtonSocial extends StatelessWidget {
  const ButtonSocial({super.key});

  @override
  Widget build(BuildContext context) {
    final double iconSize = ScreenHelper.isMobile(context) ? 24 : 30;
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        TextButton(
          onPressed: () {},
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(kPrimaryColor),
            padding: MaterialStateProperty.all<EdgeInsets>(
              EdgeInsets.symmetric(
                horizontal: ScreenHelper.isMobile(context) ? 6 : 14,
                vertical: ScreenHelper.isMobile(context) ? 16 : 20,
              ),
            ),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6.0),
              ),
            ),
          ),
          child: GestureDetector(
            onTap: () {
              final Uri gmailLaunchUri = Uri(
                scheme: 'mailto',
                path: 'm.rizkyananda57@gmail.com',
                query:
                    'subject=Hello&body=I would like to get in touch with you.',
              );
              html.window.open(gmailLaunchUri.toString(), '_blank');
            },
            child: Text(
              "Contact Me",
              style: TextStyle(
                color: kSecondaryColor,
                fontSize: ScreenHelper.isMobile(context) ? 12 : 14,
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 12,
        ),
        GestureDetector(
          onTap: () {
            html.window
                .open('https://www.linkedin.com/in/ekyrizky/', 'new_tab');
          },
          child: MouseRegion(
            cursor: SystemMouseCursors.click,
            child: Image.asset(
              'assets/ic_linkedin.png',
              width: iconSize,
              height: iconSize,
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(
          width: 12,
        ),
        GestureDetector(
          onTap: () {
            html.window.open('https://github.com/ekyrizky', 'new_tab');
          },
          child: MouseRegion(
            cursor: SystemMouseCursors.click,
            child: Image.asset(
              'assets/ic_github.png',
              width: iconSize,
              height: iconSize,
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(
          width: 12,
        ),
        GestureDetector(
          onTap: () {
            html.window.open('https://instagram.com/ekyrizk_', 'new_tab');
          },
          child: MouseRegion(
            cursor: SystemMouseCursors.click,
            child: Image.asset(
              'assets/ic_instagram.png',
              width: iconSize,
              height: iconSize,
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(
          width: 12,
        ),
        GestureDetector(
          onTap: () {
            html.window.open('https://x.com/rzkyananda', 'new_tab');
          },
          child: MouseRegion(
            cursor: SystemMouseCursors.click,
            child: Image.asset(
              'assets/ic_twitter.png',
              width: iconSize,
              height: iconSize,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}
