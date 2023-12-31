import 'package:ekyrizky_portfolio/utils/constants.dart';
import 'package:flutter/material.dart';

class ScreenHelper extends StatelessWidget {
  const ScreenHelper({
    Key? key,
    required this.desktop,
    required this.tablet,
    required this.mobile,
  }) : super(key: key);

  final Widget mobile;
  final Widget tablet;
  final Widget desktop;

  static bool isDesktop(BuildContext context) =>
      screenWidth(context) >= kTabletMaxWidth;

  static bool isTablet(BuildContext context) =>
      screenWidth(context) >= kPhoneMaxWidth &&
      screenWidth(context) <= kTabletMaxWidth;

  static bool isMobile(BuildContext context) =>
      screenWidth(context) <= kPhoneMaxWidth;

  static double screenWidth(BuildContext context) =>
      MediaQuery.of(context).size.width;

  static double getPadding(BuildContext context) {
    if (isMobile(context) || isTablet(context)) {
      return 0.15;
    } else {
      return 0.30;
    }
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth > kTabletMaxWidth) {
          return desktop;
        } else if (constraints.maxWidth >= kPhoneMaxWidth &&
            constraints.maxWidth <= kTabletMaxWidth) {
          return tablet;
        } else {
          return mobile;
        }
      },
    );
  }
}
