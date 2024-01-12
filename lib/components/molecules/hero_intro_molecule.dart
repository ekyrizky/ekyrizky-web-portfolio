import 'package:ekyrizky_portfolio/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeroIntroMolecule extends StatelessWidget {
  const HeroIntroMolecule({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Hello, I'm",
          style: GoogleFonts.farro(
            color: kPrimaryColor,
            height: 1.0,
            fontWeight: FontWeight.w800,
            fontSize: 20.0,
          ),
        ),
        const SizedBox(
          height: 6.0,
        ),
        Text(
          'Rizky Ananda',
          style: GoogleFonts.farro(
            color: kPrimaryColor,
            height: 1.0,
            fontWeight: FontWeight.w800,
            fontSize: 32.0,
          ),
        ),
        const SizedBox(
          height: 10.0,
        ),
        Text(
          'Frontend & Mobile Apps Developer',
          style: GoogleFonts.farro(
            color: kSecondaryColor,
            height: 1.2,
            fontWeight: FontWeight.w500,
            fontSize: 20.0,
          ),
        ),
        const SizedBox(
          height: 32.0,
        ),
        Text(
          'Need a custom website or mobile application?',
          style: GoogleFonts.farro(
            color: kPrimaryColor,
            height: 1.2,
            fontWeight: FontWeight.w300,
            fontSize: 16.0,
          ),
        ),
        const SizedBox(
          height: 8.0,
        ),
        Wrap(
          children: [
            Text(
              'Got a project?',
              style: GoogleFonts.farro(
                color: kPrimaryColor,
                height: 1.2,
                fontWeight: FontWeight.w300,
                fontSize: 16.0,
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: const MouseRegion(
                cursor: SystemMouseCursors.click,
                child: Text(
                  " Let's talk.",
                  style: TextStyle(
                    color: kSecondaryColor,
                    height: 1.2,
                    fontWeight: FontWeight.w300,
                    fontSize: 16.0,
                  ),
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}
