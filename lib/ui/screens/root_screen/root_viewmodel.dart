import 'package:first/ui/screens/home/home_screen.dart';
import 'package:first/ui/screens/profile/profile_screen.dart';
import 'package:first/ui/screens/workout/workout_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class RootViewModel extends ChangeNotifier{
  int selectedIndex =0;
  onclick (index){
    selectedIndex = index ;
    notifyListeners();
  }
}
List<Widget> screens =[HomeScreen(),WorkoutScreen(),ProfileScreen()];