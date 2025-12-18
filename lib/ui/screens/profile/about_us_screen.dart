import 'package:flutter/material.dart';

import '../../../core/constants/color.dart';
import '../../../core/constants/textstyle.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.arrow_back_ios,color: blackColor,),),
                  Text("About Us Screen",style:style20),

                ],
              ),
            Text(
              "Welcome to our Bodybuilding App, your all-in-one fitness companion "
                  "designed to help you build strength, improve performance, and achieve "
                  "your dream physique.\n\n"
                  "We are passionate about fitness and believe that everyone deserves "
                  "access to the right guidance, motivation, and tools to live a healthier "
                  "and stronger life.\n\n"
                  "Our mission is simple: to empower you to train smarter, stay motivated, "
                  "and become the strongest version of yourself.",
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 14, height: 1.6),
            ),
          ],
        )
        ),
    );
  }
}
