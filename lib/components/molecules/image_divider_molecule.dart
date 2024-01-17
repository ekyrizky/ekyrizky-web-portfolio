import 'package:ekyrizky_portfolio/components/atoms/text_image_atom.dart';
import 'package:ekyrizky_portfolio/utils/screen_helper.dart';
import 'package:flutter/material.dart';

class ImageDividerMolecule extends StatelessWidget {
  const ImageDividerMolecule({super.key});

  @override
  Widget build(BuildContext context) {
    double padding = MediaQuery.of(context).size.width /
        2 *
        (ScreenHelper.isDesktop(context) ? 0.2 : 0.1);
    double imageSize = ScreenHelper.isMobile(context) ? 20 : 32;
    double textSize = ScreenHelper.isMobile(context) ? 14 : 18;

    return Padding(
      padding: EdgeInsets.all(padding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextImageAtom(
            image: 'assets/ic_design.png',
            text: 'DESIGN',
            imageSize: imageSize,
            textSize: textSize,
          ),
          TextImageAtom(
            image: 'assets/ic_develop.png',
            text: 'DEVELOP',
            imageSize: imageSize,
            textSize: textSize,
          ),
          TextImageAtom(
            image: 'assets/ic_maintain.png',
            text: 'MAINTAIN',
            imageSize: imageSize,
            textSize: textSize,
          ),
        ],
      ),
    );
  }
}
