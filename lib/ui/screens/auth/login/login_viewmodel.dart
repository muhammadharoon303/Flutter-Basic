// ignore_for_file: use_build_context_synchronously

import 'package:first/core/enums/enums.dart';
import 'package:first/core/services/auth_services.dart';
import 'package:first/core/view_model/view_model.dart';
import 'package:first/ui/screens/home/home_screen.dart';
import 'package:flutter/material.dart';

class LoginViewModel extends BaseViewModel {
  final globalLoginKey = GlobalKey<FormState>();
  final globalSignUpKey = GlobalKey<FormState>();

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final AuthServices _authServices = AuthServices();

  bool isLoading = false;
  void setLoading(bool value) {
    isLoading = value;
    notifyListeners();
  }

signUpWithEmailAndPassword(BuildContext context) async {
  setState(ViewState.busy);
    final user = await _authServices.signUpWithEmailAndPassword(emailController.text, passwordController.text );
    print("user data is null or not ${user.toString()}");
   setState(ViewState.idle);
    print("user data is null or not ${user.toString()}");
    if (user != null) {
      Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Sign up failed")));
    }
 
  }

  singInWithEmailAndPassword(BuildContext context) async {
    try {

   setState(ViewState.busy);
    final user = await _authServices.singInWithEmailAndPassword(emailController.text, passwordController.text );
    print("user data is null or not ${user.toString()}");

    if (user != null) {
       ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Sign in successfully")));
      Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Sign in failed")));
    }
    }catch(e){
      print("Error signing in: $e");
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("User have no account with this email and password")));
      setState(ViewState.idle);
    }
     setState(ViewState.idle);

  }
}
