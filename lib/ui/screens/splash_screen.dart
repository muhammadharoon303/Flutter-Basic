import 'dart:async';
import 'package:first/ui/GridView.dart';
import 'package:first/ui/screens/auth/Login/Login.dart';
import 'package:first/ui/screens/auth/login/login.dart';
import 'package:first/ui/screens/auth/signup/signup.dart';
import 'package:first/ui/screens/home/home_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    // Timer to navigate after 3 seconds
    Timer(Duration(seconds: 2), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => SignupScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset("assets/static_assets/splash.png",
          fit: BoxFit.cover,
          width: double.infinity,
          height: double.infinity,
        ),
      ),
    );
  }
}




