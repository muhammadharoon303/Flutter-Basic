import 'package:first/core/constants/color.dart';
import 'package:first/core/constants/textstyle.dart';
import 'package:first/ui/screens/profile/about_us_screen.dart';
import 'package:first/ui/screens/profile/edit_profile_screen.dart';
import 'package:first/ui/screens/profile/privacy&policy_screen.dart';
import 'package:first/ui/screens/profile/terms&condition_screen.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [

          ///
          /// Header aw Profile Image pa stack k
          ///
          Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                height: 122,
                width: double.infinity,
                color: pinkColor,
              ),

              /// Profile Image
              Positioned(
                bottom: -40,
                child: Image.asset("assets/icons_assets/person_icon.png", scale: 4, width: 90, height: 90,),),
            ],
          ),

       SizedBox(height: 50),

          /// User name da para
          Text("Alex", style: TextStyle(color: blackColor, fontWeight: FontWeight.w600, fontSize: 18,),
          ),
          SizedBox(height: 10),

          /// Edit Profile Button da para
          TextButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) => EditProfileScreen(),),);
            },
            style: TextButton.styleFrom(
              backgroundColor: blackColor,
              padding:
              EdgeInsets.symmetric(horizontal: 25, vertical: 10),
            ),
            child: Text("Edit Profile", style: TextStyle(color: whiteColor,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),

           SizedBox(height: 40),

          /// MENU  da para
          Expanded(
            child: ListView(
              padding:  EdgeInsets.symmetric(horizontal: 15),
              children: [
                Card(
                  child:InkWell(
                    onTap:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context) =>
                          AboutUsScreen() ,));
                    },child:ListTile(
                    leading:
                    Image.asset("assets/icons_assets/about.png", scale: 2),
                    title:  Text("About Us"),
                    trailing:  Icon(Icons.arrow_forward_ios, size: 20),
                  ),
                  ),
                ),
                 SizedBox(height: 20),
                Card(
                  child:InkWell(
                    onTap:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context) =>
                         TermsConditionScreen() ,));
                    },child:ListTile(
                    leading:
                    Image.asset("assets/icons_assets/term.png", scale: 2),
                    title:  Text("Terms and Conditions"),
                    trailing:  Icon(Icons.arrow_forward_ios, size: 20),
                  ),
                  ),
                ),
                 SizedBox(height: 20),

                Card(
                  child:InkWell(
                    onTap:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context) =>
                       PrivacyPolicyScreen() ,));
                    },child:ListTile(
                        leading:
                        Image.asset("assets/icons_assets/privacy.png", scale: 2),
                        title:  Text("Privacy and Policy"),
                        trailing:  Icon(Icons.arrow_forward_ios, size: 20),
                      ),
                    ),
                  ),
               SizedBox(height: 20),

                Card(
                  child:InkWell(
                    onTap:(){
                      showModalBottomSheet(context: context, builder: (context) {
                        return Container(
                          margin: EdgeInsets.all(27),
                           width: double.infinity,
                                 height: 250,
                                 child: Column(
                                   children: [
                                     Text("logout",style: style24,),
                                     Divider(),
                                     Text("Are you sure you want to logout \n                   the app",style: style20,),
                                     Row(
                                       children: [
                                        OutlinedButton(onPressed: (){
                                          Navigator.pop()
                                        }, child: child)
                                       ],
                                     )
                                   ],
                                 ),

                        );
                      },);


                    },child:ListTile(
                    leading:
                    Image.asset("assets/icons_assets/logout.png", scale: 2),
                    title:  Text("Logout"),
                    trailing:  Icon(Icons.arrow_forward_ios, size: 20),
                  ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}




//   SingleChildScrollView(
        //   child: Stack(
        //     children: [
        //
        //       Container(
        //       width: double.infinity,
        //       height: 122,
        //       color: pinkColor,
        //       child: Padding(
        //         padding: const EdgeInsets.only(top: 50),
        //         child: Column(
        //           mainAxisAlignment: MainAxisAlignment.center,
        //           children: <Widget>[
        //             Image.asset("assets/icons_assets/person_icon.png", scale: 5, width: 80,
        //               height: 80,
        //             ),
        //             SizedBox(height: 10),
        //             Text("Alex", style: TextStyle(color: blackColor,fontWeight: FontWeight.w600),
        //             ),
        //             TextButton(onPressed: () {
        //               Navigator.push(context, MaterialPageRoute(builder: (context) => EditProfileScreen()),
        //               );
        //             },style: TextButton.styleFrom(
        //               backgroundColor: blackColor,
        //             ),
        //               child: Text("Edit Profile",style: TextStyle(fontWeight: FontWeight.w600,color: whiteColor),),
        //             ),
        //           ],
        //         ),
        //       ),
        //     ),
        //
        //
        //
        //     ]
        //   ),          // child: Container(
        //   //   width: double.infinity,
        //   //   height: 122,
        //   //   color: pinkColor,
        //   //   child: Padding(
        //   //     padding: const EdgeInsets.only(top: 50),
        //   //     child: Column(
        //   //       mainAxisAlignment: MainAxisAlignment.center,
        //   //       children: <Widget>[
        //   //         Image.asset("assets/icons_assets/person_icon.png", scale: 5, width: 80,
        //   //           height: 80,
        //   //         ),
        //   //         SizedBox(height: 10),
        //   //         Text("Alex", style: TextStyle(color: blackColor,fontWeight: FontWeight.w600),
        //   //         ),
        //   //         TextButton(onPressed: () {
        //   //             Navigator.push(context, MaterialPageRoute(builder: (context) => EditProfileScreen()),
        //   //             );
        //   //           },style: TextButton.styleFrom(
        //   //           backgroundColor: blackColor,
        //   //          ),
        //   //           child: Text("Edit Profile",style: TextStyle(fontWeight: FontWeight.w600,color: whiteColor),),
        //   //         ),
        //   //       ],
        //   //     ),
        //   //   ),
        //   // ),
        // ),
        //   SizedBox(height: 130,),
        //   Column(
        //  ),
        //   SizedBox(height: 80,),
        //   SizedBox(
        //     width: 253,
        //     height: 50,
        //     child: ElevatedButton(
        //       onPressed: () {
        //         Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen(),));
        //       },
        //       style: ElevatedButton.styleFrom(
        //         backgroundColor: pinkColor,
        //         shape: RoundedRectangleBorder(
        //           borderRadius: BorderRadius.circular(25),
        //         ),
        //       ),
        //       child:  Text("Cancel Subscription", style: TextStyle(fontSize: 16, color: whiteColor,),
        //       ),
        //     ),
        //   ),
        //

