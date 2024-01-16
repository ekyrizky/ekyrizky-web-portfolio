import 'package:ekyrizky_portfolio/components/atoms/portfolio_atom.dart';
import 'package:ekyrizky_portfolio/components/atoms/portfolio_link_atom.dart';
import 'package:ekyrizky_portfolio/models/portfolio_model.dart';
import 'package:flutter/material.dart';

class PortfolioMolecule extends StatelessWidget {
  const PortfolioMolecule({super.key});

  @override
  Widget build(BuildContext context) {
    final data = PortfolioModel.portfolioItems[6];
    return Column(
      children: [
        PortfolioAtom(data: data),
        PortfolioLinkAtom(data: data),
      ],
    );
  }
}
