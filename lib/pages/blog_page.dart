import 'package:ekyrizky_portfolio/utils/constants.dart';
import 'package:ekyrizky_portfolio/utils/screen_helper.dart';
import 'package:flutter/material.dart';

class BlogPage extends StatelessWidget {
  const BlogPage({super.key});

  @override
  Widget build(BuildContext context) {
    double padding = MediaQuery.of(context).size.width /
        2 *
        ScreenHelper.getPadding(context);
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: padding),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/ic_barricade.png',
                height: 24.0,
                fit: BoxFit.fill,
              ),
              const SizedBox(
                width: 16,
              ),
              ScreenHelper.screenWidth(context) < 550
                  ? const Expanded(
                      child: Text(
                        "I'm currently working on this page. Please be patient.",
                        style: TextStyle(
                          color: kSecondaryColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    )
                  : const Text(
                      "I'm currently working on this page. Please be patient.",
                      style: TextStyle(
                        color: kSecondaryColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
