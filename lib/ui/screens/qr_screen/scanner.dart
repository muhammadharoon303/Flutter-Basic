import 'package:flutter/material.dart';

import '../../../core/constants/color.dart';
import '../../../core/constants/textstyle.dart';

class ScannerScreen extends StatelessWidget {
  const ScannerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 39, left: 72),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.arrow_back_ios),
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Scan ",
                          style: style24.copyWith(color: blackColor),
                        ),
                        TextSpan(
                          text: "Barcode",
                          style: style24.copyWith(color: pinkColor),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Stack(
              children: [
                Image.asset("assets/static_assets/scanner_bg.png", scale: 3),
                Positioned(
                  top: 114,
                  left: 14,
                  child: Center(
                    child: Image.asset(
                      "assets/icons_assets/scanner.png",
                      scale: 3,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
