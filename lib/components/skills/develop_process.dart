import 'package:ekyrizky_portfolio/components/skills/process_item.dart';
import 'package:ekyrizky_portfolio/utils/screen_helper.dart';
import 'package:flutter/material.dart';

class DevelopProcess extends StatelessWidget {
  const DevelopProcess({super.key});

  @override
  Widget build(BuildContext context) {
    double padding = MediaQuery.of(context).size.width /
        2 *
        ScreenHelper.getPadding(context);
    return Padding(
      padding: EdgeInsets.only(
        right: padding,
        left: padding,
        top: 52,
        bottom: 120,
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ProcessItem(
            assets: 'assets/ic_design.png',
            title: 'Design',
          ),
          ProcessItem(
            assets: 'assets/ic_develop.png',
            title: 'Develop',
          ),
          ProcessItem(
            assets: 'assets/ic_maintain.png',
            title: 'Maintain',
          ),
        ],
      ),
    );
  }
}
