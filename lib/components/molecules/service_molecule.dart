import 'package:ekyrizky_portfolio/components/atoms/service_atom.dart';
import 'package:ekyrizky_portfolio/utils/screen_helper.dart';
import 'package:flutter/material.dart';

class ServiceMolecule extends StatelessWidget {
  const ServiceMolecule({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenHelper(
      desktop: _build(),
      tablet: _build(),
      mobile: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: _build(),
      ),
    );
  }

  Widget _build() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ServiceAtom(
          asset: 'assets/ic_mobile_app.png',
          text: 'Mobile Application',
        ),
        ServiceAtom(
          asset: 'assets/ic_android_sdk.png',
          text: 'Android SDK',
        ),
        ServiceAtom(
          asset: 'assets/ic_website.png',
          text: 'Website',
        ),
      ],
    );
  }
}
