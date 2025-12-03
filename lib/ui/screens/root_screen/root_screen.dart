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
  int selectedindex = 0;

  List<Widget> screens = [
    HomeScreen(),
    WorkoutScreen(),
    ProfileScreen(),
  ];

  onclick(index) {
    setState(() {
      selectedindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[selectedindex],
      bottomNavigationBar: Container(
        height: 65,
        decoration: BoxDecoration(
          color: Colors.pink,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                onclick(0);
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/icons_assets/home.png",
                    scale: 3,
                    color: selectedindex == 0 ? Colors.white : Colors.grey,
                  ),
                  Text(
                    "Home",
                    style: TextStyle(
                      color: selectedindex == 0 ? Colors.white : Colors.grey,
                    ),
                  ),
                ],
              ),
            ),

            InkWell(
              onTap: () {
                onclick(1);
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/icons_assets/workout.png",
                    scale: 3,
                    color: selectedindex == 1 ? Colors.white : Colors.grey,
                  ),
                  Text(
                    "Workout",
                    style: TextStyle(
                      color: selectedindex == 1 ? Colors.white : Colors.grey,
                    ),
                  ),
                ],
              ),
            ),

            InkWell(
              onTap: () {
                onclick(2);
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/icons_assets/profile.png",
                    scale: 3,
                    color: selectedindex == 2 ? Colors.white : Colors.grey,
                  ),
                  Text(
                    "Profile",
                    style: TextStyle(
                      color: selectedindex == 2 ? Colors.white : Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
