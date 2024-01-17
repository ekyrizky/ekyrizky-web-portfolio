import 'package:ekyrizky_portfolio/components/molecules/portfolio_molecule.dart';
import 'package:ekyrizky_portfolio/models/portfolio_model.dart';
import 'package:ekyrizky_portfolio/utils/screen_helper.dart';
import 'package:flutter/material.dart';

class PortfolioOrganism extends StatelessWidget {
  const PortfolioOrganism({super.key, required this.data});

  final PortfolioModel data;

  @override
  Widget build(BuildContext context) {
    return ScreenHelper(
      desktop: _build(data),
      tablet: _build(data),
      mobile: _buildMobile(data),
    );
  }

  Widget _build(PortfolioModel data) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          data.image,
          width: 200.0,
          fit: BoxFit.cover,
        ),
        const SizedBox(width: 32),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 32),
            child: PortfolioMolecule(data: data),
          ),
        ),
      ],
    );
  }

  Widget _buildMobile(PortfolioModel data) {
    return Column(
      children: [
        Image.asset(
          data.image,
          width: 150.0,
          fit: BoxFit.cover,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: PortfolioMolecule(data: data),
        ),
      ],
    );
  }
}
