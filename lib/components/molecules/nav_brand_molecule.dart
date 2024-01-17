import 'package:ekyrizky_portfolio/components/atoms/brand_text_atom.dart';
import 'package:ekyrizky_portfolio/components/atoms/photo_profile_atom.dart';
import 'package:ekyrizky_portfolio/utils/screen_helper.dart';
import 'package:flutter/material.dart';

class NavBrandMolecule extends StatelessWidget {
  const NavBrandMolecule({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenHelper.isMobile(context) ? _buildMobile() : _build();
  }

  Widget _build() {
    return const BrandTextAtom();
  }

  Widget _buildMobile() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        PhotoProfileAtom(size: 32),
        SizedBox(width: 8),
        BrandTextAtom(),
      ],
    );
  }
}
