import 'package:ekyrizky_portfolio/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FooterAtom extends StatelessWidget {
  const FooterAtom({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 32),
      child: Text(
        "Copyright \u00a9 2024 Rizky Ananda",
        style: GoogleFonts.farro(
          color: kSecondaryColor,
          height: 1.0,
          fontWeight: FontWeight.w500,
          fontSize: 14.0,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
