import 'package:ekyrizky_portfolio/models/portfolio_model.dart';
import 'package:ekyrizky_portfolio/utils/constants.dart';
import 'package:flutter/material.dart';
import 'dart:html' as html;

class PortfolioLinkAtom extends StatelessWidget {
  const PortfolioLinkAtom({super.key, required this.data});

  final PortfolioModel data;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      direction: Axis.horizontal,
      alignment: WrapAlignment.center,
      crossAxisAlignment: WrapCrossAlignment.center,
      children: [
        if (data.playstoreLink != null)
          Container(
            width: 150,
            child: MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                onTap: () {
                  html.window.open(data.playstoreLink!, 'new_tab');
                },
                child: Image.asset(
                  'assets/ic_playstore_big.png',
                  height: 56.0,
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
        if (data.githubLink != null)
          Container(
            width: 150,
            child: MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                onTap: () {
                  html.window.open(data.githubLink!, 'new_tab');
                },
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Wrap(
                    alignment: WrapAlignment.center,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                      Image.asset(
                        'assets/ic_github.png',
                        height: 42.0,
                        fit: BoxFit.fill,
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      const Text(
                        'GitHub',
                        style: TextStyle(
                          color: kPrimaryColor,
                          fontSize: 20,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
      ],
    );
  }
}
