import 'package:first/core/constants/color.dart';
import 'package:first/ui/screens/home/home_screen.dart';
import 'package:first/ui/screens/profile/edit_profile_screen.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
      ),
      body: Column(
        children:[ SingleChildScrollView(
          child: Stack(
            children: [Container(
              width: double.infinity,
              height: 122,
              color: pinkColor,
              child: Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset("assets/icons_assets/person_icon.png", scale: 5, width: 80,
                      height: 80,
                    ),
                    SizedBox(height: 10),
                    Text("Alex", style: TextStyle(color: blackColor,fontWeight: FontWeight.w600),
                    ),
                    TextButton(onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => EditProfileScreen()),
                      );
                    },style: TextButton.styleFrom(
                      backgroundColor: blackColor,
                    ),
                      child: Text("Edit Profile",style: TextStyle(fontWeight: FontWeight.w600,color: whiteColor),),
                    ),
                  ],
                ),
              ),
            ),]
          ),          // child: Container(
          //   width: double.infinity,
          //   height: 122,
          //   color: pinkColor,
          //   child: Padding(
          //     padding: const EdgeInsets.only(top: 50),
          //     child: Column(
          //       mainAxisAlignment: MainAxisAlignment.center,
          //       children: <Widget>[
          //         Image.asset("assets/icons_assets/person_icon.png", scale: 5, width: 80,
          //           height: 80,
          //         ),
          //         SizedBox(height: 10),
          //         Text("Alex", style: TextStyle(color: blackColor,fontWeight: FontWeight.w600),
          //         ),
          //         TextButton(onPressed: () {
          //             Navigator.push(context, MaterialPageRoute(builder: (context) => EditProfileScreen()),
          //             );
          //           },style: TextButton.styleFrom(
          //           backgroundColor: blackColor,
          //          ),
          //           child: Text("Edit Profile",style: TextStyle(fontWeight: FontWeight.w600,color: whiteColor),),
          //         ),
          //       ],
          //     ),
          //   ),
          // ),
        ),
          SizedBox(height: 130,),
          Column(
            children: [
              Card(
                child: ListTile(
                  leading: Image.asset("assets/icons_assets/about.png",scale: 2,),
                  title: Text("About Us"),
                  trailing: Icon(Icons.arrow_forward_ios,size: 20,),
                ),
              ),
              SizedBox(height: 20,),
              Card(
                child: ListTile(
                  leading: Image.asset("assets/icons_assets/term.png",scale: 2,),
                  title: Text("Terms and Condition"),
                  trailing: Icon(Icons.arrow_forward_ios,size: 20,),
                ),
              ),
              SizedBox(height: 20,),
              Card(
                child: ListTile(
                  leading: Image.asset("assets/icons_assets/privacy.png",scale: 2,),
                  title: Text("Privacy and Policy"),
                  trailing: Icon(Icons.arrow_forward_ios,size: 20,),
                ),
              ),
              SizedBox(height: 20,),
              Card(
                child: ListTile(
                  leading: Image.asset("assets/icons_assets/logout.png",scale: 2,),
                  title: Text("Logout"),
                  trailing: Icon(Icons.arrow_forward_ios,size: 20,),
                ),
              ),
            ],
          ),
          SizedBox(height: 80,),
          SizedBox(
            width: 253,
            height: 50,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen(),));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: pinkColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
              child:  Text("Cancel Subscription", style: TextStyle(fontSize: 16, color: whiteColor,),
              ),
            ),
          ),
      ],
      ),
    );
  }
}
