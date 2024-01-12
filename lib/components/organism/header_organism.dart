import 'package:ekyrizky_portfolio/components/atoms/drawer_icon_atom.dart';
import 'package:ekyrizky_portfolio/components/molecules/nav_brand_molecule.dart';
import 'package:ekyrizky_portfolio/components/molecules/nav_items_molecule.dart';
import 'package:ekyrizky_portfolio/utils/screen_helper.dart';
import 'package:flutter/material.dart';

class HeaderOrganism extends StatelessWidget {
  const HeaderOrganism({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenHelper(
      desktop: _build(false),
      tablet: _build(false),
      mobile: _build(true),
    );
  }

  Widget _build(bool isDrawer) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const NavBrandMolecule(),
        isDrawer ? const DrawerIconAtom() : const NavItemsMolecule(),
      ],
    );
  }
}
