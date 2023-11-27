import 'package:ekyrizky_portfolio/components/header.dart';
import 'package:ekyrizky_portfolio/components/header_items.dart';
import 'package:ekyrizky_portfolio/utils/globals.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: Globals.scaffoldKey,
      endDrawer: Drawer(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 24.0,
            ),
            child: HeaderItemsDrawer(),
          ),
        ),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Header(),
            ],
          ),
        ),
      ),
    );
  }
}
