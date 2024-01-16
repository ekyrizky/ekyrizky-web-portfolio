import 'package:ekyrizky_portfolio/models/portfolio_model.dart';
import 'package:ekyrizky_portfolio/utils/constants.dart';
import 'package:flutter/material.dart';

class PortfolioAtom extends StatelessWidget {
  const PortfolioAtom({super.key, required this.data});

  final PortfolioModel data;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          data.category,
          style: const TextStyle(
            color: kSecondaryColor,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(width: 6),
        Text(
          data.title,
          style: const TextStyle(
            color: kTextPrimaryColor,
            fontSize: 42,
            fontWeight: FontWeight.w800,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          data.description,
          style: const TextStyle(
            color: kTextSecondaryColor,
            fontSize: 14,
            fontWeight: FontWeight.w400,
            letterSpacing: 1.5,
            wordSpacing: 2.0,
            height: 1.5,
          ),
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}
