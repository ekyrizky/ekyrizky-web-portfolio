import 'package:ekyrizky_portfolio/components/atoms/photo_profile_atom.dart';
import 'package:ekyrizky_portfolio/components/molecules/hero_intro_molecule.dart';
import 'package:ekyrizky_portfolio/components/molecules/hero_social_molecule.dart';
import 'package:ekyrizky_portfolio/utils/screen_helper.dart';
import 'package:flutter/material.dart';

class HeroIntroOrganism extends StatelessWidget {
  const HeroIntroOrganism({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenHelper(
      desktop: _build(),
      tablet: _build(),
      mobile: _buildMobile(),
    );
  }

  Widget _build() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _buildMobile(),
        PhotoProfileAtom(size: 220),
      ],
    );
  }

  Widget _buildMobile() {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HeroIntroMolecule(),
        SizedBox(height: 32),
        HeroSocialMolecule(),
      ],
    );
  }
}
