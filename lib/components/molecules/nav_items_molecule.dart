import 'package:ekyrizky_portfolio/models/header_model.dart';
import 'package:ekyrizky_portfolio/utils/constants.dart';
import 'package:flutter/material.dart';

class NavItemsMolecule extends StatelessWidget {
  const NavItemsMolecule({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: HeaderModel.headerItems
          .map(
            (item) => Container(
              margin: const EdgeInsets.only(left: 52),
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
