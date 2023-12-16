import 'package:ekyrizky_portfolio/models/portfolio_model.dart';
import 'package:ekyrizky_portfolio/utils/constants.dart';
import 'package:ekyrizky_portfolio/utils/screen_helper.dart';
import 'package:flutter/material.dart';
import 'dart:html' as html;

class PortfolioItems extends StatelessWidget {
  final PortfolioModel data;
  const PortfolioItems({required this.data, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double padding = MediaQuery.of(context).size.width / 2 * 0.2;
    return ScreenHelper(
      desktop: _build(padding),
      tablet: _build(padding),
      mobile: _buildMobile(),
    );
  }

  Widget _build(double padding) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          data.image,
          width: 200.0,
          fit: BoxFit.cover,
        ),
        SizedBox(
          width: padding,
        ),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 32,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    data.category,
                    style: const TextStyle(
                      color: kSecondaryColor,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  if (data.storeLink != null)
                    MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: GestureDetector(
                        onTap: () {
                          html.window.open(data.storeLink!, 'new_tab');
                        },
                        child: Image.asset(
                          'ic_playstore.png',
                          width: 20.0,
                          height: 20.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  const SizedBox(
                    width: 8,
                  ),
                  if (data.githubLink != null)
                    MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: GestureDetector(
                        onTap: () {
                          html.window.open(data.githubLink!, 'new_tab');
                        },
                        child: Image.asset(
                          'ic_github.png',
                          width: 20.0,
                          height: 20.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                ],
              ),
              Text(
                data.title,
                style: const TextStyle(
                  color: kTextPrimaryColor,
                  fontSize: 42,
                  fontWeight: FontWeight.w800,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                data.description,
                style: const TextStyle(
                  color: kTextSecondaryColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.left,
              ),
              const SizedBox(
                height: 150,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildMobile() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Align(
          alignment: Alignment.center,
          child: Image.asset(
            data.image,
            width: 180.0,
            fit: BoxFit.fill,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              data.category,
              style: const TextStyle(
                color: kSecondaryColor,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              width: 8,
            ),
            if (data.storeLink != null)
              MouseRegion(
                cursor: SystemMouseCursors.click,
                child: GestureDetector(
                  onTap: () {
                    html.window.open(data.storeLink!, 'new_tab');
                  },
                  child: Image.asset(
                    'ic_playstore.png',
                    width: 20.0,
                    height: 20.0,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            const SizedBox(
              width: 8,
            ),
            if (data.githubLink != null)
              MouseRegion(
                cursor: SystemMouseCursors.click,
                child: GestureDetector(
                  onTap: () {
                    html.window.open(data.githubLink!, 'new_tab');
                  },
                  child: Image.asset(
                    'ic_github.png',
                    width: 20.0,
                    height: 20.0,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
          ],
        ),
        Text(
          data.title,
          style: const TextStyle(
            color: kTextPrimaryColor,
            fontSize: 42,
            fontWeight: FontWeight.w800,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          data.description,
          style: const TextStyle(
            color: kTextSecondaryColor,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
          textAlign: TextAlign.left,
        ),
        const SizedBox(
          height: 80,
        ),
      ],
    );
  }
}
