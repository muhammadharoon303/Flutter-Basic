import 'package:flutter/material.dart';

import '../../../core/constants/color.dart';
import '../../../core/constants/textstyle.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body:Column(
          children: [
            Row(
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.arrow_back_ios,color: blackColor,),),
              Text("Privacy and Policy Screen",style: style20,),
                ]
            )
          ],
        )
      
      ),
    );
  }
}
