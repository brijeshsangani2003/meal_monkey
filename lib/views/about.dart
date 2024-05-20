import 'package:flutter/material.dart';

class about_us_screen extends StatefulWidget {
  const about_us_screen({Key? key}) : super(key: key);

  @override
  State<about_us_screen> createState() => _about_us_screenState();
}

class _about_us_screenState extends State<about_us_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            children: [
              Row(
                children: [
                  InkResponse(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_back_ios_new,
                      color: Colors.grey.shade700,
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    'About us',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey.shade700,
                    ),
                  ),
                  Spacer(),
                  InkResponse(
                    onTap: () {},
                    child: Icon(
                      Icons.shopping_cart,
                      color: Colors.grey.shade700,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    "assets/images/dot.png",
                    height: 12,
                    width: 12,
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Text(
                      "Lorem ipsum dolor sit amet,\nconsectetur adipiscing elit, sed do\neiusmod tempor incididunt ut labore\net dolore magna aliqua.\nUt enim ad minim veniam, quis nostrud\nexercitation ullamco laboris nisi\nut aliquip ex ea commodo consequat.\nDuis aute irure dolor in reprehenderit\nin voluptate velit esse cillum dolore\neu fugiat nulla pariatur. Excepteur\nsint occaecat cupidatat non proident,\nsunt in culpa qui officia deserunt\nmollit anim id est laborum."),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    "assets/images/dot.png",
                    height: 12,
                    width: 12,
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Text(
                      "Lorem ipsum dolor sit amet,\nconsectetur adipiscing elit, sed do\neiusmod tempor incididunt ut labore\net dolore magna aliqua.\nUt enim ad minim veniam, quis nostrud\nexercitation ullamco laboris nisi\nut aliquip ex ea commodo consequat.\nDuis aute irure dolor in reprehenderit\nin voluptate velit esse cillum dolore\neu fugiat nulla pariatur. Excepteur\nsint occaecat cupidatat non proident,\nsunt in culpa qui officia deserunt\nmollit anim id est laborum."),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    "assets/images/dot.png",
                    height: 12,
                    width: 12,
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Text(
                      "Lorem ipsum dolor sit amet,\nconsectetur adipiscing elit, sed do\neiusmod tempor incididunt ut labore\net dolore magna aliqua.\nUt enim ad minim veniam, quis nostrud\nexercitation ullamco laboris nisi\nut aliquip ex ea commodo consequat.\nDuis aute irure dolor in reprehenderit\nin voluptate velit esse cillum dolore\neu fugiat nulla pariatur. Excepteur\nsint occaecat cupidatat non proident,\nsunt in culpa qui officia deserunt\nmollit anim id est laborum."),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
