import 'package:flutter/material.dart';

import 'package:meal_monkey/common_widget/common_textfield.dart';

import '../common_widget/common_button.dart';
import 'otp_screen.dart';

class profile_screen extends StatefulWidget {
  const profile_screen({Key? key}) : super(key: key);

  @override
  State<profile_screen> createState() => _profile_screenState();
}

class _profile_screenState extends State<profile_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      "Profile",
                      style: TextStyle(
                          color: Color(0xff4A4B4D),
                          fontSize: 22,
                          fontWeight: FontWeight.w500),
                    ),
                    Spacer(),
                    Icon(
                      Icons.shopping_cart,
                      color: Colors.black,
                      size: 22,
                    )
                  ],
                ),
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage('assets/images/man.png'),
                          fit: BoxFit.cover)),
                  child: ClipOval(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        height: 29,
                        width: double.infinity,
                        decoration: BoxDecoration(color: Colors.grey.shade400),
                        child: Icon(
                          Icons.camera_alt,
                          color: Colors.black,
                        ),
                      )
                    ],
                  )),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.edit,
                      color: Colors.red,
                      size: 12,
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    Text(
                      "Edit profile",
                      style: TextStyle(color: Colors.red, fontSize: 12),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Hi there Emilia!",
                  style: TextStyle(color: Colors.black, fontSize: 17),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Sign out",
                  style: TextStyle(color: Colors.black, fontSize: 12),
                ),
                SizedBox(
                  height: 25,
                ),
                common_textformfield(
                  hintText: 'Name',
                ),
                SizedBox(
                  height: 20,
                ),
                common_textformfield(
                  hintText: 'Email',
                ),
                SizedBox(
                  height: 20,
                ),
                common_textformfield(
                  hintText: 'Mobile no',
                  keyboardType: TextInputType.phone,
                  maxlength: 10,
                ),
                SizedBox(
                  height: 20,
                ),
                common_textformfield(
                  hintText: 'Address',
                ),
                SizedBox(
                  height: 20,
                ),
                common_textformfield(
                  hintText: 'Password',
                ),
                SizedBox(
                  height: 20,
                ),
                common_textformfield(
                  hintText: 'Confirm Password',
                ),
                SizedBox(
                  height: 20,
                ),
                common_button(
                  onTap: () {},
                  title: "Save",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
