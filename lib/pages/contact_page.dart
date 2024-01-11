import 'package:ekyrizky_portfolio/components/warning.dart';
import 'package:ekyrizky_portfolio/utils/constants.dart';
import 'package:ekyrizky_portfolio/utils/screen_helper.dart';
import 'package:flutter/material.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

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
          child: Warning(
            title: "I'm currently working on this page. Please be patient.",
            assets: 'assets/lottie/alert.json',
          ),
        ),
      ),
    );
  }
}
