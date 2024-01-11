import 'package:ekyrizky_portfolio/components/header/header_icon.dart';
import 'package:ekyrizky_portfolio/components/header/header_items.dart';
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
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 32,
        vertical: 24,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          HeaderIconText(),
          HeaderItems(),
        ],
      ),
    );
  }

  Widget _buildMobile() {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const HeaderIcon(),
            GestureDetector(
              onTap: () => Globals.scaffoldKey.currentState!.openEndDrawer(),
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
