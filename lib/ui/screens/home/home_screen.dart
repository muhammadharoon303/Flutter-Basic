// ignore_for_file: deprecated_member_use

import 'package:first/core/constants/color.dart';
import 'package:first/core/constants/textstyle.dart';
import 'package:first/ui/screens/qr_screen/qr_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          margin: const EdgeInsets.only(left: 25, right: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Hello!", style: style14.copyWith(color: pinkColor)),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
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

              const SizedBox(height: 60),

              Stack(
                children: [
                  Image.asset("assets/static_assets/rectangle.png"),

                  // Human Image Positioned
                  Positioned(
                    left: 8,
                    bottom: 12,
                    child: Image.asset(
                      "assets/static_assets/human.png",
                      scale: 4,
                    ),
                  ),

                  // Text Positioned
                  Positioned(
                    left: 140,
                    right: 50,
                    top: 10,
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "March ",
                            style: style20.copyWith(
                              color: whiteColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: "and\n",
                            style: style20.copyWith(
                              color: whiteColor,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          TextSpan(
                            text: "Clap ",
                            style: style20.copyWith(
                              color: whiteColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: "workout\n ",
                            style: style20.copyWith(
                              color: whiteColor,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 140,
                    top: 65,
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/icons_assets/graph.png",
                          color: whiteColor,
                          scale: 3,
                        ),
                        Text(
                          "  30 Days Challenges",
                          style: TextStyle(color: whiteColor),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 50),
                  Positioned(
                    left: 140,
                    top: 95,
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/icons_assets/clock.png",
                          color: whiteColor,
                          scale: 3,
                        ),
                        Text("  5 Min", style: TextStyle(color: whiteColor)),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 118,
                    left: 192,
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(2),
                            color: Color(0xffFA92AF),
                          ),
                          alignment: Alignment.center,
                          width: 109,
                          height: 24,
                          child: Text(
                            "Ask Anything",
                            style: TextStyle(
                              color: whiteColor,
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                height: 195,
                width: double.infinity,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.circular(6),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xff989898).withOpacity(0.15),
                      blurRadius: 4,
                      spreadRadius: 4,
                      offset: Offset(-1, 2),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Steps",
                      style: TextStyle(
                        fontSize: 13,
                        height: 3,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      "Goal= 4000 steps",
                      style: TextStyle(color: Color(0xffA0A0A0)),
                    ),
                    Center(
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            width: 104,
                            height: 104,
                            child: CircularProgressIndicator(
                              value: 2355 / 4000,
                              strokeWidth: 8,
                              color: pinkColor,
                              backgroundColor: Color(0xffCDCDCD),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "    2355\n",
                                    style: TextStyle(color: blackColor),
                                  ),
                                  TextSpan(
                                    text: "   /4000\n",
                                    style: TextStyle(color: Color(0xff9B9B9B)),
                                  ),
                                  TextSpan(
                                    text: "total steps\n",
                                    style: TextStyle(
                                      color: Color(0xffF22A5B),
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text(
                  "Barcode Scanner",
                  style: TextStyle(fontSize: 15, color: blackColor),
                ),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius: BorderRadius.circular(6),
                      boxShadow: [
                        BoxShadow(
                          color: whiteColor.withOpacity(0.15),
                          blurRadius: 4,
                          spreadRadius: 4,
                          offset: Offset(-1, 2),
                        ),
                      ],
                    ),
                    width: 127,
                    height: 117,
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        TextButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => QrScreen(),));
                        }, child:Text("SCAN Bar\n   Code"),),

                        Image.asset(
                          "assets/icons_assets/barcode.png",
                          scale: 3,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 40),
                  Container(
                    decoration: BoxDecoration(
                      color: whiteColor,
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xff989898).withOpacity(0.15),
                          blurRadius: 4,
                          spreadRadius: 4,
                          offset: Offset(-1, 2),
                        ),
                      ],
                    ),
                    height: 117,
                    width: 127,
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("SCAN a Meal \n"),
                        Image.asset("assets/icons_assets/food.png", scale: 3),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
