import 'package:ekyrizky_portfolio/components/atoms/portfolio_atom.dart';
import 'package:ekyrizky_portfolio/components/atoms/portfolio_link_atom.dart';
import 'package:ekyrizky_portfolio/models/portfolio_model.dart';
import 'package:flutter/material.dart';

class PortfolioMolecule extends StatelessWidget {
  const PortfolioMolecule({super.key, required this.data});

  final PortfolioModel data;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 8),
          child: PortfolioAtom(data: data),
        ),
        PortfolioLinkAtom(data: data),
      ],
    );
  }
}
