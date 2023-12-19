import 'package:ekyrizky_portfolio/models/portfolio_model.dart';
import 'package:ekyrizky_portfolio/utils/constants.dart';
import 'package:ekyrizky_portfolio/utils/screen_helper.dart';
import 'package:flutter/material.dart';
import 'dart:html' as html;

import 'package:get/route_manager.dart';

class PortfolioPage extends StatelessWidget {
  const PortfolioPage({super.key});

  @override
  Widget build(BuildContext context) {
    PortfolioModel data = Get.arguments as PortfolioModel;
    double padding = MediaQuery.of(context).size.width /
        2 *
        ScreenHelper.getPadding(context);
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: padding,
            vertical: 32,
          ),
          child: Column(
            children: [
              Image.asset(
                data.image,
                width: 180.0,
                fit: BoxFit.fill,
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                data.title,
                style: const TextStyle(
                  color: kTextPrimaryColor,
                  fontSize: 32,
                  fontWeight: FontWeight.w800,
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              Text(
                data.description,
                style: const TextStyle(
                  color: kTextSecondaryColor,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(
                height: 56,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  if (data.storeLink != null)
                    MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: GestureDetector(
                        onTap: () {
                          html.window.open(data.storeLink!, 'new_tab');
                        },
                        child: Image.asset(
                          'assets/ic_playstore_big.png',
                          height: 56.0,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  if (data.githubLink != null)
                    MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: GestureDetector(
                        onTap: () {
                          html.window.open(data.githubLink!, 'new_tab');
                        },
                        child: Row(
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
                ],
              ),
              const SizedBox(
                height: 32,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/ic_barricade.png',
                    height: 24.0,
                    fit: BoxFit.fill,
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  ScreenHelper.screenWidth(context) < 450
                      ? const Expanded(
                          child: Text(
                            "I'm currently working on this page. Please be patient.",
                            style: TextStyle(
                              color: kSecondaryColor,
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        )
                      : const Text(
                          "I'm currently working on this page. Please be patient.",
                          style: TextStyle(
                            color: kSecondaryColor,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
