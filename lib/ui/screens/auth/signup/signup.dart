import 'package:first/core/constants/auth_decoration.dart';
import 'package:first/ui/screens/auth/signup/signup.dart.dart';
import 'package:first/ui/screens/root_screen/root_screen.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final _GloballoginKey =GlobalKey<FormState>();
  final _GlobalsignupKey =GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/static_assets/signup.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: Container(
              margin: EdgeInsets.only(top: 256, left: 19),
              height: 443,
              width: 353,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 8,
                  vertical: 16,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        gradient: LinearGradient(
                          colors: [Color(0xffFE2B5F), Color(0xffD02E56)],
                        ),
                      ),
                      child: Image.asset(
                        "assets/icons_assets/run.png",
                        scale: 4,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 80, right: 80),
                      child: TabBar(
                        labelColor: Color(0xffFE2B5F),
                        indicatorColor: Color(0xffFE2B5F),
                        indicatorSize: TabBarIndicatorSize.tab,
                        tabs: [
                          Tab(text: "login"),
                          Tab(text: "signup"),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Expanded(
                      child: TabBarView(
                        children: [
                          SingleChildScrollView(
                            child: Form(
                              key: _GloballoginKey,

                              child: Container(
                                margin: EdgeInsets.only(left: 10, right: 10),
                                child: Column(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                            blurRadius: 8,
                                            spreadRadius: 0,
                                            color: Color(0xff989898),
                                          ),
                                        ],
                                      ),
                                      child: TextFormField(
                                        validator: (value){
                                          if (value!.isEmpty||value==null){
                                            return "Please enter username";
                                          }else{
                                            return null;
                                          }
                                        },
                                        decoration: authdecoration,
                                      ),
                                    ),
                                    SizedBox(height: 10),

                                    SizedBox(height: 10),
                                    Container(
                                      decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                            blurRadius: 8,
                                            spreadRadius: 0,
                                            color: Color(0xff989898),
                                          ),
                                        ],
                                      ),
                                      child: TextFormField(
                                        validator: (value){
                                          if (value!.isEmpty||value==null){
                                            return "Please Enter Your Password ";}
                                          else{
                                            return null;
                                          }
                                        },
                                        decoration: authdecoration.copyWith(
                                          hintText: "Password",
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 20),
                                    InkWell(
                                      onTap: (){
                                        if (_GloballoginKey.currentState!.validate()){
                                          Navigator.push(context, MaterialPageRoute(builder: (context) => RootScreen(),));
                                        }
                                      },
                                      child: Container(
                                        color: Colors.red,
                                        height: 50,
                                        width: 300,
                                        alignment: Alignment.center,
                                          child: Text(
                                      
                                            "login",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                            ),
                                        ),
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.center,
                                      children: [
                                        Text("Don't have an account?"),

                                        TextButton(
                                          onPressed: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    SignupScreen(),
                                              ),
                                            );
                                          },
                                          child: Text(
                                            "Signup",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Color(0xffFE2B5F),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SingleChildScrollView(
                            child: Form(
                              key: _GlobalsignupKey,
                              child: Container(
                                margin: EdgeInsets.only(left: 10, right: 10),
                                child: Column(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                            blurRadius: 8,
                                            spreadRadius: 0,
                                            color: Color(0xff989898),
                                          ),
                                        ],
                                      ),
                                      child: TextFormField(
                                        validator: (value){
                                          if (value!.isEmpty||value==null){
                                            return "Please enter username";
                                          }else{
                                            return null;
                                          }
                                        },
                                        decoration: authdecoration,
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Container(
                                      decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                            blurRadius: 8,
                                            spreadRadius: 0,
                                            color: Color(0xff989898),
                                          ),
                                        ],
                                      ),
                                      child: TextFormField(
                                        validator: (value){
                                          if (value!.isEmpty||value==null){
                                            return "Please Enter Email";
                                          }else{
                                            return null;
                                          }
                                        },
                                        decoration: authdecoration.copyWith(
                                          hintText: "Email",
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Container(
                                      decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                            blurRadius: 8,
                                            spreadRadius: 0,
                                            color: Color(0xff989898),
                                          ),
                                        ],
                                      ),
                                      child: TextFormField(
                                        validator: (value){
                                          if (value!.isEmpty||value==null){
                                            return "Please enter password";
                                          }else{
                                            return null;
                                          }
                                        },
                                        decoration: authdecoration.copyWith(
                                          hintText: "Password",
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 20, width: 10),
                                        InkWell(
                                          onTap: (){
                                            if (_GlobalsignupKey.currentState!.validate()){
                                              Navigator.push(context, MaterialPageRoute(builder: (context) => RootScreen(),));
                                            }
                                          },
                                          child: Container(
                                            alignment: Alignment.center,
                                            color: Colors.red,
                                            height: 50,
                                            width: 300,
                                            child: Text(
                                              "sign up",
                                              style: TextStyle(color: Colors.white,fontSize: 25),
                                            ),
                                          ),
                                        ),

                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.center,
                                      children: [
                                        Text("Already have an account?"),
                                        TextButton(
                                          onPressed: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    SignupScreen(),
                                              ),
                                            );
                                          },
                                          child: Text(
                                            "login",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Color(0xffFE2B5F),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
