import 'package:ekyrizky_portfolio/utils/constants.dart';
import 'package:ekyrizky_portfolio/utils/screen_helper.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ekyrizky Portfolio',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        canvasColor: kBackgroundColor,
        textTheme: GoogleFonts.farroTextTheme(),
      ),
      home: ScreenHelper(
        desktop: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.blue,
        ),
        tablet: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.red,
        ),
        mobile: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.green,
        ),
      ),
    );
  }
}
