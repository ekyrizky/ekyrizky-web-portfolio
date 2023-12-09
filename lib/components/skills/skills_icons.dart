import 'package:ekyrizky_portfolio/utils/screen_helper.dart';
import 'package:flutter/material.dart';

class SkillIcons extends StatelessWidget {
  const SkillIcons({super.key});

  @override
  Widget build(BuildContext context) {
    double size = ScreenHelper.isMobile(context) ? 32.0 : 45.0;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Image.asset(
          'assets/ic_android.png',
          width: size,
          height: size,
          fit: BoxFit.cover,
        ),
        Image.asset(
          'assets/ic_ios.png',
          width: size,
          height: size,
          fit: BoxFit.cover,
        ),
        Image.asset(
          'assets/ic_flutter.png',
          width: size,
          height: size,
          fit: BoxFit.cover,
        ),
        Image.asset(
          'assets/ic_kotlin.png',
          width: size,
          height: size,
          fit: BoxFit.cover,
        ),
        Image.asset(
          'assets/ic_java.png',
          width: size,
          height: size,
          fit: BoxFit.cover,
        ),
        Image.asset(
          'assets/ic_firebase.png',
          width: size,
          height: size,
          fit: BoxFit.cover,
        ),
      ],
    );
  }
}
