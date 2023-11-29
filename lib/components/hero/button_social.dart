import 'package:ekyrizky_portfolio/utils/constants.dart';
import 'package:flutter/material.dart';
import 'dart:html' as html;

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
              const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
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
            child: const Text(
              "Contact Me",
              style: TextStyle(
                color: kSecondaryColor,
                fontSize: 14,
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 16,
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
              width: 30,
              height: 30,
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(
          width: 16,
        ),
        GestureDetector(
          onTap: () {
            html.window.open('https://instagram.com/ekyrizk_', 'new_tab');
          },
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
        const SizedBox(
          width: 16,
        ),
        GestureDetector(
          onTap: () {
            html.window.open('https://x.com/rzkyananda', 'new_tab');
          },
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
