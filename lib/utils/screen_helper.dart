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
      MediaQuery.of(context).size.width >= kTabletMaxWidth;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width >= kPhoneMaxWidth &&
      MediaQuery.of(context).size.width <= kTabletMaxWidth;

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width <= kPhoneMaxWidth;

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
