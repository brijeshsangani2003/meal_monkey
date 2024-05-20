import 'package:flutter/material.dart';
import 'package:meal_monkey/views/about.dart';
import 'package:meal_monkey/views/bottom_navigatoin_bar.dart';
import 'package:meal_monkey/views/checkout.dart';
import 'package:meal_monkey/views/deserts_screen.dart';
import 'package:meal_monkey/views/details_screen.dart';
import 'package:meal_monkey/views/home_screen.dart';
import 'package:meal_monkey/views/inbox.dart';
import 'package:meal_monkey/views/intro_screen.dart';
import 'package:meal_monkey/views/login_screen.dart';
import 'package:meal_monkey/views/mediaqurey_demo.dart';
import 'package:meal_monkey/views/menu_screen.dart';
import 'package:meal_monkey/views/more_detail_screen.dart';
import 'package:meal_monkey/views/my_order.dart';
import 'package:meal_monkey/views/notification.dart';
import 'package:meal_monkey/views/offer_screen.dart';
import 'package:meal_monkey/views/otp_screen.dart';
import 'package:meal_monkey/views/payment_details.dart';
import 'package:meal_monkey/views/profile_screen.dart';
import 'package:meal_monkey/views/reset_password.dart';
import 'package:meal_monkey/views/sign_up_screen.dart';
import 'package:meal_monkey/views/splash_screen.dart';
import 'package:meal_monkey/views/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Splash_Screen(),
    );
  }
}
