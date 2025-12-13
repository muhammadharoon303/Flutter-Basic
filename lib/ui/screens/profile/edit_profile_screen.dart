import 'package:first/core/constants/auth_decoration.dart';
import 'package:first/core/constants/color.dart';
import 'package:flutter/material.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                height: 179,
                width: 390,
                color: pinkColor,
              ),

              /// Profile Image
              Positioned(
                bottom: -40,
                child: Image.asset("assets/icons_assets/person_icon.png", scale: 4, width: 90, height: 90,),),

            ],
          ),
          SizedBox(height: 40,),
          Text("Haroon Afd", style: TextStyle(color: blackColor, fontWeight: FontWeight.w600, fontSize: 18,),
          ),
          SizedBox(height: 50,),
          TextField(
              decoration: authdecoration.copyWith(
              hintText:("Enter Username"),
              ),
          ),
      SizedBox(height: 20,),
      TextField(
        decoration: authdecoration.copyWith(
          hintText:("Enter Password"),
        ),
      ),
        ],)
    );
  }
}
