import 'package:first/ui/screens/qr_screen/scanner.dart';
import 'package:flutter/material.dart';

import '../../../core/constants/color.dart';
import '../../../core/constants/textstyle.dart';

class QrScreen extends StatelessWidget {
  const QrScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          margin: const EdgeInsets.only(left: 25, right: 25),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Hello!", style: style14.copyWith(color: pinkColor)),
              // SizedBox(width: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.arrow_back_ios),
                  ),
                  // SizedBox(width: 20,),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Find A ",
                          style: style24.copyWith(color: blackColor),
                        ),
                        TextSpan(
                          text: "Challenge",
                          style: style24.copyWith(color: pinkColor),
                        ),
                      ],
                    ),
                  ),
                  Image.asset("assets/icons_assets/search.png", scale: 3),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 123, left: 20),
                child: Text(
                  "Scan your barcode",
                  style: TextStyle(
                    color: pinkColor,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 180, left: 90),
                child: Image.asset(
                  "assets/icons_assets/barcode.png",
                  color: blackColor,
                  scale: 1,
                ),
              ),
              SizedBox(height: 120),
              Center(
                child: Container(
                  width: 297,
                  height: 42,
                  decoration: BoxDecoration(
                    color: pinkColor,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ScannerScreen(),
                        ),
                      );
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Image.asset("assets/icons_assets/scan.png",color: whiteColor,),
                        Icon(Icons.qr_code_scanner, color: whiteColor),
                        SizedBox(width: 20),
                        Text(
                          "Scan Barcode",
                          style: TextStyle(color: whiteColor),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
