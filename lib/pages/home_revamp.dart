import 'package:ekyrizky_portfolio/components/organism/header_organism.dart';
import 'package:ekyrizky_portfolio/utils/constants.dart';
import 'package:flutter/material.dart';

class HomeRevamp extends StatelessWidget {
  const HomeRevamp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeaderOrganism(),
          ],
        ),
      ),
    );
  }
}
