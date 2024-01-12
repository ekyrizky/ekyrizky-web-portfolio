import 'package:ekyrizky_portfolio/components/molecules/hero_intro_molecule.dart';
import 'package:ekyrizky_portfolio/components/molecules/hero_social_molecule.dart';
import 'package:flutter/material.dart';

class HeroIntroOrganism extends StatelessWidget {
  const HeroIntroOrganism({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HeroIntroMolecule(),
        SizedBox(height: 32),
        HeroSocialMolecule(),
      ],
    );
  }
}
