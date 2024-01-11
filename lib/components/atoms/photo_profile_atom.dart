import 'package:flutter/material.dart';

class PhotoProfileAtom extends StatelessWidget {
  const PhotoProfileAtom({super.key, required this.size});

  final double size;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(size / 2),
      child: Image.asset(
        'assets/ic_profile_small.jpeg',
        width: size,
        height: size,
        fit: BoxFit.cover,
      ),
    );
  }
}
