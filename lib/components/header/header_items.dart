import 'package:ekyrizky_portfolio/models/header_model.dart';
import 'package:ekyrizky_portfolio/pages/about_page.dart';
import 'package:ekyrizky_portfolio/utils/constants.dart';
import 'package:ekyrizky_portfolio/utils/globals.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

List<HeaderModel> headerItems = [
  HeaderModel(
    title: "About",
    onTap: () {
      Get.to(const AboutPage());
    },
  ),
  HeaderModel(
    title: "Portfolio",
    onTap: () {},
  ),
  HeaderModel(
    title: "Contact",
    onTap: () {},
  )
];

class HeaderItems extends StatelessWidget {
  const HeaderItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: headerItems
          .map(
            (item) => Container(
              margin: const EdgeInsets.only(left: 32),
              child: MouseRegion(
                cursor: SystemMouseCursors.click,
                child: GestureDetector(
                  onTap: item.onTap,
                  child: Text(
                    item.title,
                    style: const TextStyle(
                      color: kSecondaryColor,
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ),
            ),
          )
          .toList(),
    );
  }
}

class HeaderItemsDrawer extends StatelessWidget {
  const HeaderItemsDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title: MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              onTap: () {
                Globals.scaffoldKey.currentState!.closeEndDrawer();
                headerItems[index].onTap();
              },
              child: Text(
                headerItems[index].title,
                style: const TextStyle(
                  color: kSecondaryColor,
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
          ),
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return const SizedBox(
          height: 8.0,
        );
      },
      itemCount: headerItems.length,
    );
  }
}
