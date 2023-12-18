import 'package:ekyrizky_portfolio/models/portfolio_model.dart';
import 'package:ekyrizky_portfolio/pages/portfolio_page.dart';
import 'package:ekyrizky_portfolio/utils/constants.dart';
import 'package:ekyrizky_portfolio/utils/screen_helper.dart';
import 'package:flutter/material.dart';
import 'dart:html' as html;

import 'package:get/route_manager.dart';

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
    return Padding(
      padding: EdgeInsets.only(bottom: 100),
      child: Row(
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
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      data.category,
                      style: const TextStyle(
                        color: kSecondaryColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    if (data.storeLink != null)
                      MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: GestureDetector(
                          onTap: () {
                            html.window.open(data.storeLink!, 'new_tab');
                          },
                          child: Image.asset(
                            'assets/ic_playstore.png',
                            width: 16.0,
                            height: 16.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    const SizedBox(
                      width: 8,
                    ),
                    if (data.githubLink != null)
                      MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: GestureDetector(
                          onTap: () {
                            html.window.open(data.githubLink!, 'new_tab');
                          },
                          child: Image.asset(
                            'assets/ic_github.png',
                            width: 16.0,
                            height: 16.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: () {
                      Get.to(const PortfolioPage());
                    },
                    child: Text(
                      data.title,
                      style: const TextStyle(
                        color: kTextPrimaryColor,
                        fontSize: 42,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
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
                  textAlign: TextAlign.left,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMobile() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Align(
          alignment: Alignment.center,
          child: Image.asset(
            data.image,
            width: 180.0,
            fit: BoxFit.fill,
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              data.category,
              style: const TextStyle(
                color: kSecondaryColor,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              width: 8,
            ),
            if (data.storeLink != null)
              MouseRegion(
                cursor: SystemMouseCursors.click,
                child: GestureDetector(
                  onTap: () {
                    html.window.open(data.storeLink!, 'new_tab');
                  },
                  child: Image.asset(
                    'assets/ic_playstore.png',
                    width: 16.0,
                    height: 16.0,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            const SizedBox(
              width: 8,
            ),
            if (data.githubLink != null)
              MouseRegion(
                cursor: SystemMouseCursors.click,
                child: GestureDetector(
                  onTap: () {
                    html.window.open(data.githubLink!, 'new_tab');
                  },
                  child: Image.asset(
                    'assets/ic_github.png',
                    width: 16.0,
                    height: 16.0,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
          ],
        ),
        const SizedBox(
          height: 4,
        ),
        MouseRegion(
          cursor: SystemMouseCursors.click,
          child: GestureDetector(
            onTap: () {
              Get.to(const PortfolioPage());
            },
            child: Text(
              data.title,
              style: const TextStyle(
                color: kTextPrimaryColor,
                fontSize: 32,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          data.description,
          style: const TextStyle(
            color: kTextSecondaryColor,
            fontSize: 14,
            fontWeight: FontWeight.w500,
            letterSpacing: 1.5,
            wordSpacing: 2.0,
            height: 1.5,
          ),
          textAlign: TextAlign.left,
        ),
        const SizedBox(
          height: 80,
        ),
      ],
    );
  }
}
