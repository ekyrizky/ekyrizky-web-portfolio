import 'package:flutter/material.dart';

class ClickableIconAtom extends StatelessWidget {
  const ClickableIconAtom({
    super.key,
    required this.icon,
    required this.onTap,
  });

  final String icon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () {
          onTap();
        },
        child: Image.asset(
          icon,
          width: 32,
          height: 32,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
