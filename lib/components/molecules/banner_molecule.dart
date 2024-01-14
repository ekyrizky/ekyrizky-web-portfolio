import 'package:ekyrizky_portfolio/components/atoms/lottie_atom.dart';
import 'package:ekyrizky_portfolio/utils/constants.dart';
import 'package:flutter/material.dart';

class BannerMolecule extends StatelessWidget {
  const BannerMolecule({super.key, required this.image, required this.title});

  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        minWidth: 500,
        maxWidth: kPhoneMaxWidth,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: kPrimaryColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          LottieAtom(
            size: 150,
            asset: image,
          ),
          Expanded(
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: kSecondaryColor,
                fontSize: 32,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
