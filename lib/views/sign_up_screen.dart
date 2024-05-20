import 'package:flutter/material.dart';

import '../common_widget/common_button.dart';
import '../common_widget/common_textfield.dart';
import 'login_screen.dart';

class SignUp_Screen extends StatefulWidget {
  const SignUp_Screen({Key? key}) : super(key: key);

  @override
  State<SignUp_Screen> createState() => _SignUp_ScreenState();
}

class _SignUp_ScreenState extends State<SignUp_Screen> {
  final formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: SingleChildScrollView(
            child: Form(
              key: formkey,
              child: Column(
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Sign Up',
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
                    'Add your details to sign up',
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
                        return 'name can not be empty';
                      }
                    },
                    hintText: "Name",
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  common_textformfield(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'email can not be empty';
                      }
                    },
                    hintText: "Email",
                    keyboardType: TextInputType.emailAddress,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  common_textformfield(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'mobile no can not be empty';
                      } else if (value.length != 10) {
                        return 'mobile no must be 10 digit';
                      }
                    },
                    keyboardType: TextInputType.phone,
                    hintText: "Mobile No",
                    maxlength: 10,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  common_textformfield(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'address can not be empty';
                      }
                    },
                    hintText: "Address",
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  common_textformfield(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'password can not be empty';
                      } else if (value.length < 6) {
                        return 'password must be 6 digit';
                      }
                    },
                    hintText: "Password",
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  common_textformfield(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'confirm password can not be empty';
                      }
                    },
                    hintText: "Confirm Password",
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  common_button(
                    onTap: () {
                      if (formkey.currentState!.validate()) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Login_Screen(),
                            ));
                      }
                    },
                    title: "Sign up",
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already have an account?",
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
                                  builder: (context) => Login_Screen(),
                                ));
                          });
                        },
                        child: Text(
                          "Login",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 15,
                            color: Color(0xffFC6011),
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
    );
  }
}
