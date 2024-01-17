import 'package:ekyrizky_portfolio/components/molecules/nav_brand_molecule.dart';
import 'package:flutter/material.dart';

class HeaderOrganism extends StatelessWidget {
  const HeaderOrganism({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        NavBrandMolecule(),
      ],
    );
  }
}
