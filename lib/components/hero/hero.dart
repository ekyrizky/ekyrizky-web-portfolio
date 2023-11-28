import 'package:ekyrizky_portfolio/utils/constants.dart';
import 'package:ekyrizky_portfolio/utils/screen_helper.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    double heroHeight = MediaQuery.of(context).size.height *
        (ScreenHelper.isMobile(context) ? .75 : .60);
    double paddingHorizontal = MediaQuery.of(context).size.width /
        2 *
        (ScreenHelper.isTablet(context) ? .10 : .35);

    return Container(
      height: heroHeight,
      width: double.infinity,
      child: ScreenHelper(
        desktop: _build(paddingHorizontal),
        tablet: _build(paddingHorizontal),
        mobile: _buildMobile(),
      ),
    );
  }

  Widget _build(double padding) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: padding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hello, I'm",
                  style: GoogleFonts.farro(
                    color: kPrimaryColor,
                    height: 1.0,
                    fontWeight: FontWeight.w800,
                    fontSize: 20.0,
                  ),
                ),
                SizedBox(
                  height: 6.0,
                ),
                Text(
                  "Rizky Ananda",
                  style: GoogleFonts.farro(
                    color: kPrimaryColor,
                    height: 1.0,
                    fontWeight: FontWeight.w800,
                    fontSize: 32.0,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  "Frontend & Mobile Apps Developer",
                  style: GoogleFonts.farro(
                    color: kSecondaryColor,
                    height: 1.2,
                    fontWeight: FontWeight.w500,
                    fontSize: 20.0,
                  ),
                ),
                SizedBox(
                  height: 32.0,
                ),
                Text(
                  "Need a custom website or mobile application?",
                  style: GoogleFonts.farro(
                    color: kPrimaryColor,
                    height: 1.2,
                    fontWeight: FontWeight.w300,
                    fontSize: 16.0,
                  ),
                ),
                SizedBox(
                  height: 8.0,
                ),
                Container(
                  child: Wrap(
                    children: [
                      Text(
                        "Got a project?",
                        style: GoogleFonts.farro(
                          color: kPrimaryColor,
                          height: 1.2,
                          fontWeight: FontWeight.w300,
                          fontSize: 16.0,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: MouseRegion(
                          cursor: SystemMouseCursors.click,
                          child: Text(
                            " Let's talk.",
                            style: TextStyle(
                              color: kSecondaryColor,
                              height: 1.2,
                              fontWeight: FontWeight.w300,
                              fontSize: 16.0,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 16.0,
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              height: 100,
              width: double.infinity,
              color: Colors.blue,
              child: Text("profile photo"),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMobile() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 32),
      child: Container(
        height: 200,
        width: double.infinity,
        color: Colors.blue,
      ),
    );
  }
}
