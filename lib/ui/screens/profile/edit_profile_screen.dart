import 'package:first/core/constants/auth_decoration.dart';
import 'package:first/core/constants/color.dart';
import 'package:first/core/constants/textstyle.dart';
import 'package:first/ui/custom_widgets/custom_button.dart';
import 'package:flutter/material.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.bottomCenter,
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  height: 179,
                  width: double.infinity,
                  color: pinkColor,
                  child:   Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: Row(
                     children: [
                       InkWell(
                         onTap: (){
                           Navigator.pop(context);
                         },
                         child: Icon(Icons.arrow_back_ios,color: whiteColor,),),
                       Text("Edit Profile",style:style20.copyWith(color: whiteColor),)
                     ], 
                    )
                  ),

                ),

                /// Profile Image
                Positioned(
                  bottom: -45,
                  child: Image.asset("assets/icons_assets/person_icon.png", scale: 3, width: 112, height: 112,),),

              ],
            ),
            SizedBox(height: 40,),
            Text("Change Picture", style: TextStyle(color: blackColor, fontWeight: FontWeight.w600, fontSize: 18,),
            ),
            SizedBox(height: 50,),
           Container(
             margin: EdgeInsets.all(30),
             child: Column(
               children: [
                 TextField(
                   decoration: authdecoration.copyWith(
                     hintText:(" User Name"),
                   ),
                 ),
                 SizedBox(height: 20,),
                 TextField(
                   decoration: authdecoration.copyWith(
                     hintText:("Email"),
                   ),
                 ),
                 SizedBox(height: 40,),
                 CustomButton(child: Text(
                   "Update",
                   style: style14.copyWith(
                     color: whiteColor,
                     fontWeight:
                     FontWeight.bold,
                     fontSize: 16,)))
                   ],
             ),
           ),

          ],)
      ),
    );
  }
}
