
import 'package:first/main.dart';
import 'package:first/ui/screens/home/home_screen.dart';
import 'package:first/ui/screens/profile/profile_screen.dart';
import 'package:first/ui/screens/workout/workout_screen.dart';
import 'package:flutter/material.dart';

class RootScreen extends StatefulWidget {
  const RootScreen({super.key});

  @override
  State<RootScreen> createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
  int SelectedIndex=0;
  List<Widget>screens=[
    HomeScreen(),
    WorkoutScreen(),
    ProfileScreen(),

  ];

  onclick(index){
    setState(() {
      SelectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[SelectedIndex],
      bottomNavigationBar:Container(
       color: Colors.pink,
       height: 80,
       child:  Row(
         mainAxisAlignment: MainAxisAlignment.spaceAround,
         crossAxisAlignment: CrossAxisAlignment.center,
         children: [
           InkWell(
             onTap: (){
               onclick(0);
             },
             child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Image.asset("assets/icons_assets/home.png",scale: 4,color: SelectedIndex==0? Colors.grey:Colors.white,),
                 Text("Home",style: TextStyle(color: SelectedIndex==0? Colors.grey:Colors.white),)
               ],
             ),
           ),
           InkWell(
             onTap: (){
               onclick(1);
             },
             child: Column(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
               Image.asset("assets/icons_assets/workout.png",scale: 4,color: SelectedIndex==1?Colors.grey:Colors.white,),
               Text("Workout",style: TextStyle(color: SelectedIndex==1? Colors.grey:Colors.white),)
               ],
             ),
           ),
           InkWell(
             onTap: (){
               onclick(2);
             },
             child: Column(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Image.asset("assets/icons_assets/profile.png",scale: 4,color: SelectedIndex==2? Colors.grey:Colors.white,),
                 Text("Profile",style: TextStyle(color:SelectedIndex==2? Colors.grey:Colors.white ),)
               ],
             ),
           )
         ],
       ) ,
     ),
    );
  }
}






// import 'package:first/main.dart';
// import 'package:first/ui/screens/home/home_screen.dart';
// import 'package:first/ui/screens/profile/profile_screen.dart';
// import 'package:first/ui/screens/workout/workout_screen.dart';
// import 'package:flutter/material.dart';
//
// class RootScreen extends StatefulWidget {
//   const RootScreen({super.key});
//
//   @override
//   State<RootScreen> createState() => _RootScreenState();
// }
//
// class _RootScreenState extends State<RootScreen> {
//   int Selected_index=0;
//   List<Widget>screens=[
//     HomeScreen(),
//     WorkoutScreen(),
//     ProfileScreen(),
//   ];
//   onclick(index){
//     setState(() {
//       Selected_index=index;
//     });
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: screens[
//         Selected_index
//       ],
//       bottomNavigationBar: Container(
//         height: 65,
//         decoration: BoxDecoration(
//           color: Colors.pink,
//         ),
//
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceAround,
//          crossAxisAlignment: CrossAxisAlignment.center,
//          children: [
//           InkWell(
//             onTap: (){
//               onclick(0);
//
//             },
//             child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//
//                 children: [
//                   Image.asset("assets/icons_assets/home.png", scale: 3,),
//                   Text("Home"),
//                 ],
//               ),
//             ),
//
//            InkWell(
//              onTap: (){
//                onclick(1);
//              },
//              child: Column(
//                mainAxisAlignment: MainAxisAlignment.center,
//                children: [
//                  Image.asset("assets/icons_assets/workout.png", scale:3,),
//                  Text("Workout"),
//                ],
//              ),
//            ),
//            InkWell(
//              onTap: (){
//                onclick(2);
//              },
//              child: Column(
//                mainAxisAlignment: MainAxisAlignment.center,
//                children: [
//                  Image.asset("assets/icons_assets/profile.png" , scale: 3,),
//                  Text("Profile",),
//                ],
//              ),
//            ),
//          ],
//
//         ),
//       ),
//     );
//   }
// }
