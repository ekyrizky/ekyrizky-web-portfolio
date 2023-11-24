import 'package:flutter/material.dart';

class HeaderModel {
  final String title;
  final VoidCallback onTap;

  HeaderModel({
    required this.title,
    required this.onTap,
  });
}
