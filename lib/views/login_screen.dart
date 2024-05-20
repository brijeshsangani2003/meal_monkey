import 'package:flutter/material.dart';
import 'package:meal_monkey/views/reset_password.dart';
import 'package:meal_monkey/views/sign_up_screen.dart';

import '../common_widget/common_button.dart';
import '../common_widget/common_textfield.dart';
import 'intro_screen.dart';

class Login_Screen extends StatefulWidget {
  const Login_Screen({Key? key}) : super(key: key);

  @override
  State<Login_Screen> createState() => _Login_ScreenState();
}

class _Login_ScreenState extends State<Login_Screen> {
  final formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Center(
            child: Form(
              key: formkey,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Login',
                      style: TextStyle(
                        letterSpacing: 1,
                        fontWeight: FontWeight.w400,
                        fontSize: 30,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Add your details to login',
                      style: TextStyle(
                        letterSpacing: 1.3,
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(
                      height: 35,
                    ),
                    common_textformfield(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'email can not be empty';
                        }
                      },
                      hintText: "Your Email",
                      keyboardType: TextInputType.emailAddress,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    common_textformfield(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'password can not be empty';
                        } else if (value.length < 6) {
                          return 'password must be 6 diggit';
                        }
                      },
                      hintText: "Password",
                      keyboardType: TextInputType.emailAddress,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    common_button(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Intro_Screen(),
                          ),
                        );
                      },
                      title: "Login",
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    TextButton(
                      onPressed: () {
                        setState(() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Reset_Password(),
                              ));
                        });
                      },
                      child: Text(
                        'Forgot your password?',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                          color: Colors.grey.shade400,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 35,
                    ),
                    Text(
                      'Or Login With',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                        color: Colors.grey.shade400,
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    MaterialButton(
                      onPressed: () {},
                      height: 55,
                      minWidth: double.infinity,
                      shape: UnderlineInputBorder(
                        borderRadius: BorderRadius.circular(40),
                        borderSide: BorderSide.none,
                      ),
                      color: Color(
                        0xff367FC0,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/Facebook (1).png',
                            height: 25,
                            width: 25,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            'Login with Facebook',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    MaterialButton(
                      onPressed: () {},
                      height: 55,
                      minWidth: double.infinity,
                      shape: UnderlineInputBorder(
                        borderRadius: BorderRadius.circular(40),
                        borderSide: BorderSide.none,
                      ),
                      color: Color(
                        0xffDD4B39,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/google-plus-logo.png',
                            height: 25,
                            width: 25,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            'Login with Google',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don't have an account?",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 15,
                            color: Colors.grey.shade400,
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            setState(() {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => SignUp_Screen(),
                                  ));
                            });
                          },
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => SignUp_Screen(),
                                    ));
                              });
                            },
                            child: Text(
                              "Sign Up",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 15,
                                color: Color(0xffFC6011),
                              ),
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
        ),
      ),
    );
  }
}
