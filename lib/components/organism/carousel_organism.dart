import 'package:carousel_slider/carousel_slider.dart';
import 'package:ekyrizky_portfolio/components/molecules/banner_molecule.dart';
import 'package:flutter/material.dart';

class CarouselOrganism extends StatelessWidget {
  const CarouselOrganism({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 150,
        viewportFraction: 1,
        autoPlay: true,
      ),
      items: [
        Center(
          child: BannerMolecule(
            image: 'assets/lottie/anim_design.json',
            title: 'DESIGN',
          ),
        ),
        Center(
          child: BannerMolecule(
            image: 'assets/lottie/anim_develop.json',
            title: 'DEVELOP',
          ),
        ),
        Center(
          child: BannerMolecule(
            image: 'assets/lottie/anim_update.json',
            title: 'MAINTAIN',
          ),
        ),
      ],
    );
  }
}
