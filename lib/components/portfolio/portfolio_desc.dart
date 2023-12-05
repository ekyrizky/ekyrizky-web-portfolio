import 'package:ekyrizky_portfolio/utils/constants.dart';
import 'package:flutter/material.dart';

class PortfolioDesc extends StatelessWidget {
  const PortfolioDesc({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 32,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Android App",
            style: const TextStyle(
              color: kSecondaryColor,
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            "Vision+",
            style: const TextStyle(
              color: kTextPrimaryColor,
              fontSize: 42,
              fontWeight: FontWeight.w800,
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book",
            style: const TextStyle(
              color: kTextSecondaryColor,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.justify,
          ),
        ],
      ),
    );
  }
}
