import 'package:ekyrizky_portfolio/models/header_model.dart';
import 'package:ekyrizky_portfolio/utils/constants.dart';
import 'package:flutter/material.dart';

List<HeaderModel> headerItems = [
  HeaderModel(
    title: "About",
    onTap: () {},
  ),
  HeaderModel(
    title: "Portfolio",
    onTap: () {},
  ),
  HeaderModel(
    title: "Contact",
    onTap: () {},
  )
];

class HeaderItems extends StatelessWidget {
  const HeaderItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: headerItems
          .map(
            (item) => Container(
              margin: const EdgeInsets.only(left: 32),
              child: MouseRegion(
                cursor: SystemMouseCursors.click,
                child: GestureDetector(
                  onTap: item.onTap,
                  child: Text(
                    item.title,
                    style: const TextStyle(
                      color: kSecondaryColor,
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ),
            ),
          )
          .toList(),
    );
  }
}
