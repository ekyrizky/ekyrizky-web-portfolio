import 'package:flutter/material.dart';

class HeaderModel {
  final String title;
  final VoidCallback onTap;

  HeaderModel({
    required this.title,
    required this.onTap,
  });

  static List<HeaderModel> headerItems = [
    // HeaderModel(
    //   title: "About",
    //   onTap: () {
    //     Get.toNamed(Routes.about);
    //   },
    // ),
    // HeaderModel(
    //   title: "Blogs",
    //   onTap: () {
    //     Get.toNamed(Routes.blogs);
    //   },
    // ),
    // HeaderModel(
    //   title: "Contact",
    //   onTap: () {
    //     Get.toNamed(Routes.contact);
    //   },
    // )
  ];
}
