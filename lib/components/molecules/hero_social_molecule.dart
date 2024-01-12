import 'package:ekyrizky_portfolio/components/atoms/clickable_icon.dart';
import 'package:ekyrizky_portfolio/components/atoms/text_button_atom.dart';
import 'package:flutter/material.dart';
import 'dart:html' as html;

class HeroSocialMolecule extends StatelessWidget {
  const HeroSocialMolecule({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      direction: Axis.horizontal,
      crossAxisAlignment: WrapCrossAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 8),
          child: TextButtonAtom(
            text: 'Contact Me',
            onTap: () {
              final String mail = Uri(
                scheme: 'mailto',
                path: 'm.rizkyananda57@gmail.com',
                query:
                    'subject=Hello&body=I would like to get in touch with you.',
              ).toString();
              html.window.open(mail, '_blank');
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 8,
          ),
          child: ClickableIconAtom(
            icon: 'assets/ic_linkedin.png',
            onTap: () {
              html.window
                  .open('https://www.linkedin.com/in/ekyrizky/', 'new_tab');
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 8,
          ),
          child: ClickableIconAtom(
            icon: 'assets/ic_github.png',
            onTap: () {
              html.window.open('https://github.com/ekyrizky/', 'new_tab');
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 8,
          ),
          child: ClickableIconAtom(
            icon: 'assets/ic_instagram.png',
            onTap: () {
              html.window.open('https://instagram.com/ekyrizk_/', 'new_tab');
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 8,
          ),
          child: ClickableIconAtom(
            icon: 'assets/ic_twitter.png',
            onTap: () {
              html.window.open('https://x.com/rzkyananda/', 'new_tab');
            },
          ),
        ),
      ],
    );
  }
}
