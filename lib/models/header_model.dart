import 'package:ekyrizky_portfolio/pages/about_page.dart';
import 'package:ekyrizky_portfolio/pages/blog_page.dart';
import 'package:ekyrizky_portfolio/pages/contact_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HeaderModel {
  final String title;
  final VoidCallback onTap;

  HeaderModel({
    required this.title,
    required this.onTap,
  });

  static List<HeaderModel> headerItems = [
    HeaderModel(
      title: "About",
      onTap: () {
        Get.to(const AboutPage());
      },
    ),
    HeaderModel(
      title: "Blogs",
      onTap: () {
        Get.to(const BlogPage());
      },
    ),
    HeaderModel(
      title: "Contact",
      onTap: () {
        Get.to(const ContactPage());
      },
    )
  ];
}
