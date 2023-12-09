import 'package:ekyrizky_portfolio/models/portfolio_model.dart';
import 'package:ekyrizky_portfolio/utils/constants.dart';
import 'package:ekyrizky_portfolio/utils/screen_helper.dart';
import 'package:flutter/material.dart';

class PortfolioItems extends StatelessWidget {
  final PortfolioModel data;
  const PortfolioItems({required this.data, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double padding = MediaQuery.of(context).size.width / 2 * 0.2;
    return ScreenHelper(
      desktop: _build(padding),
      tablet: _build(padding),
      mobile: _buildMobile(),
    );
  }

  Widget _build(double padding) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          data.image,
          width: 200.0,
          fit: BoxFit.cover,
        ),
        SizedBox(
          width: padding,
        ),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 32,
              ),
              Text(
                data.category,
                style: const TextStyle(
                  color: kSecondaryColor,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                data.title,
                style: const TextStyle(
                  color: kTextPrimaryColor,
                  fontSize: 42,
                  fontWeight: FontWeight.w800,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                data.description,
                style: const TextStyle(
                  color: kTextSecondaryColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 150,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildMobile() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          data.image,
          width: 180.0,
          fit: BoxFit.fill,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              data.category,
              style: const TextStyle(
                color: kSecondaryColor,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              data.title,
              style: const TextStyle(
                color: kTextPrimaryColor,
                fontSize: 42,
                fontWeight: FontWeight.w800,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              data.description,
              style: const TextStyle(
                color: kTextSecondaryColor,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(
              height: 72,
            ),
          ],
        ),
      ],
    );
  }
}
