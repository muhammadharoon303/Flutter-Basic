import 'package:first/core/constants/textstyle.dart';
import 'package:flutter/material.dart';
import '../../../core/constants/color.dart';

class TermsConditionScreen extends StatelessWidget {
  const TermsConditionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
        body:Column(
          children: [
            Row(
               children: [
                 InkWell(
                   onTap: (){
                     Navigator.pop(context);
                   },
                   child: Icon(Icons.arrow_back_ios,color: blackColor,),),
                 Text("Terms And Condition Screen",style: style20,),
               ]
            )
          ],
        )));
  }
}
