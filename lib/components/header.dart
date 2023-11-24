import 'package:ekyrizky_portfolio/utils/constants.dart';
import 'package:ekyrizky_portfolio/utils/globals.dart';
import 'package:ekyrizky_portfolio/utils/screen_helper.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenHelper(
      desktop: _build(),
      tablet: _build(),
      mobile: _buildMobile(),
    );
  }

  Widget _build() {
    return Container(
      width: double.infinity,
      height: 100,
      color: Colors.amber,
    );
  }

  Widget _buildMobile() {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Ekyrizky",
              style: TextStyle(
                color: kSecondaryColor,
                fontSize: 20,
                fontWeight: FontWeight.bold,
                letterSpacing: 2.5,
              ),
            ),
            GestureDetector(
              onTap: () {
                Globals.scaffoldKey.currentState!.openEndDrawer();
              },
              child: const Icon(
                Icons.menu_rounded,
                color: kSecondaryColor,
                size: 28.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
