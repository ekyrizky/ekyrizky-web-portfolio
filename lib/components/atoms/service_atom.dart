import 'package:ekyrizky_portfolio/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ServiceAtom extends StatelessWidget {
  const ServiceAtom({super.key, required this.asset, required this.text});

  final String asset;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: 160),
      decoration: BoxDecoration(
        color: kSecondaryColor.withOpacity(0.3),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: kPrimaryColor,
          width: 2,
        ),
      ),
      margin: const EdgeInsets.symmetric(horizontal: 8),
      child: Padding(
        padding: EdgeInsets.all(8),
        child: Row(
          children: [
            Image.asset(
              asset,
              width: 36,
              fit: BoxFit.fill,
            ),
            const SizedBox(width: 4),
            Expanded(
              child: Center(
                child: Text(
                  text,
                  style: GoogleFonts.farro(
                    color: kPrimaryColor,
                    height: 1.2,
                    fontWeight: FontWeight.w400,
                    fontSize: 16.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
