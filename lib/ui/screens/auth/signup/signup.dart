// ignore_for_file: use_build_context_synchronously

import 'package:first/core/constants/auth_decoration.dart';
import 'package:first/core/constants/color.dart';
import 'package:first/core/constants/textstyle.dart';
import 'package:first/core/enums/enums.dart';
import 'package:first/ui/custom_widgets/custom_button.dart';
import 'package:first/ui/screens/auth/login/login.dart';
import 'package:first/ui/screens/auth/login/login_viewmodel.dart';
import 'package:first/ui/screens/root_screen/root_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: ChangeNotifierProvider(
        create: (context) => LoginViewModel(),
        child: Consumer<LoginViewModel>(
          builder: (context, model, child) {
            return Scaffold(
              ///
              /// Start Body
              ///
              body: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/static_assets/signup.png"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Center(
                  child: Container(
                    margin: EdgeInsets.only(top: 256, left: 19, right: 19),
                    height: 443,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(6),
                    ),

                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 16,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          ///
                          /// Top logo
                          ///
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              gradient: LinearGradient(
                                colors: [pinkColor, Color(0xffD02E56)],
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
                              labelColor: pinkColor,
                              indicatorColor: pinkColor,
                              indicatorSize: TabBarIndicatorSize.tab,
                              labelStyle: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                              tabs: [
                                Tab(text: "Login"),
                                Tab(text: "Signup"),
                              ],
                            ),
                          ),
                          SizedBox(height: 20),
                          Expanded(
                            child: TabBarView(
                              children: [
                                SingleChildScrollView(
                                  child: Form(
                                    key: model.globalLoginKey,

                                    child: Column(
                                      children: [
                                        TextFormField(
                                          controller: model.emailController,
                                          validator: (value) {
                                            if (value!.isEmpty) {
                                              return "Please enter username";
                                            } else {
                                              return null;
                                            }
                                          },
                                          decoration: authdecoration,
                                        ),
                                        SizedBox(height: 10),

                                        SizedBox(height: 10),
                                        TextFormField(
                                          controller: model.passwordController,
                                          validator: (value) {
                                            if (value!.isEmpty) {
                                              return "Please Enter Your Password ";
                                            } else if (value.isEmpty ||
                                                value.length <=7) {
                                              return "Please Enter at least 8 characters ";}
                                            else{
                                              return null;
                                            }
                                          },
                                          decoration: authdecoration.copyWith(
                                            hintText: "Password",
                                          ),
                                        ),
                                        SizedBox(height: 20),
                                        InkWell(
                                          onTap: () async {
                                            if (model
                                                .globalLoginKey
                                                .currentState!
                                                .validate()) {
                                    
                                              model.singInWithEmailAndPassword(context);
                                            
                                            }
                                          },
                                          child: CustomButton(
                                            child: model.state == ViewState.busy
                                                ? CircularProgressIndicator(
                                                    backgroundColor: whiteColor,
                                                  )
                                                : Text(
                                                    "Login",
                                                    style: style14.copyWith(
                                                      color: whiteColor,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 16,
                                                    ),
                                                  ),
                                          ),
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
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
                                                        SignUpScreen(),
                                                  ),
                                                );
                                              },
                                              child: Text(
                                                "Signup",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: pinkColor,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SingleChildScrollView(
                                  child: Form(
                                    key: model.globalSignUpKey,
                                    child: Container(
                                      margin: EdgeInsets.only(
                                        left: 10,
                                        right: 10,
                                      ),
                                      child: Column(
                                        children: [
                                          TextFormField(
                                            validator: (value) {
                                              if (value!.isEmpty) {
                                                return "Please enter username";
                                              } else {
                                                return null;
                                              }
                                            },
                                            decoration: authdecoration,
                                          ),
                                          SizedBox(height: 10),
                                          TextFormField(
                                            controller: model.emailController,
                                            validator: (value) {
                                              if (value!.isEmpty) {
                                                return "Please Enter Email";
                                              } else {
                                                return null;
                                              }
                                            },
                                            decoration: authdecoration.copyWith(
                                              hintText: "Email",
                                            ),
                                          ),
                                          SizedBox(height: 10),
                                          TextFormField(
                                       controller: model.passwordController,
                                            validator: (value) {
                                              if (value!.isEmpty) {
                                                return "Please enter password";
                                              } else if (value.isEmpty ||
                                                  value.length <=7) {
                                                return "Please Enter at least 8 characters ";}
                                              else {
                                                return null;
                                              }
                                            },
                                            decoration: authdecoration.copyWith(
                                              hintText: "Password",
                                            ),
                                          ),
                                          SizedBox(height: 20, width: 10),
                                          InkWell(
                                            onTap: () {
                                              if (model
                                                  .globalSignUpKey
                                                  .currentState!
                                                  .validate()) {
                                   model.signUpWithEmailAndPassword(context);
                                              }
                                            },
                                            child: CustomButton(
                                              child:
                                                  model.state == ViewState.busy
                                                  ? CircularProgressIndicator(
                                                      backgroundColor:
                                                          whiteColor,
                                                    )
                                                  : Text(
                                                      "Singup",
                                                      style: style14.copyWith(
                                                        color: whiteColor,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 16,
                                                      ),
                                                    ),
                                            ),
                                          ),

                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
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
                                                        Login(),
                                                  ),
                                                );
                                                },
                                                child: Text(
                                                  "Login",
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: pinkColor,
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
            );
          },
        ),
      ),
    );
  }
}
