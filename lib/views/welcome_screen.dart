import 'package:flutter/material.dart';
import 'package:meal_monkey/common_widget/common_button.dart';
import 'package:meal_monkey/views/sign_up_screen.dart';

import 'login_screen.dart';

class Welcome_Screen extends StatefulWidget {
  const Welcome_Screen({Key? key}) : super(key: key);

  @override
  State<Welcome_Screen> createState() => _Welcome_ScreenState();
}

class _Welcome_ScreenState extends State<Welcome_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: 400,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/images/orange.png',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  bottom: -10,
                  left: 0,
                  right: 0,
                  child: Image.asset(
                    'assets/images/Monkey face.png',
                    height: 100,
                    width: 100,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Meal',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w800,
                    color: Color(
                      0xffFC6011,
                    ),
                  ),
                ),
                Text(
                  'Monkey',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w800,
                    color: Color(
                      0xff4A4B4D,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 7,
            ),
            Text(
              'FOOD DELIVERY',
              style: TextStyle(
                letterSpacing: 2.0,
                fontWeight: FontWeight.w400,
                fontSize: 11,
                color: Color(
                  0xff4A4B4D,
                ),
              ),
            ),
            SizedBox(
              height: 35,
            ),
            Text(
              textAlign: TextAlign.center,
              'Discover the best foods from over 1,000\nrestaurants and fast delivery to your doorstep',
              style: TextStyle(
                fontWeight: FontWeight.w300,
                fontSize: 13,
                color: Color(
                  0xff4A4B4D,
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: common_button(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Login_Screen(),
                    ),
                  );
                },
                title: "Login",
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: MaterialButton(
                onPressed: () {
                  setState(() {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignUp_Screen(),
                        ));
                  });
                },
                height: 55,
                minWidth: double.infinity,
                color: Colors.white,
                elevation: 0,
                shape: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(40),
                  borderSide: BorderSide(
                    color: Color(0xffFC6011),
                  ),
                ),
                child: Text(
                  'Create an Account',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                    color: Color(0xffFC6011),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
