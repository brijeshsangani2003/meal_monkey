import 'package:flutter/material.dart';

class notification_screen extends StatefulWidget {
  const notification_screen({Key? key}) : super(key: key);

  @override
  State<notification_screen> createState() => _notification_screenState();
}

class _notification_screenState extends State<notification_screen> {
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
                    'Notification',
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
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Your orders has been picked up"),
                      Text(
                        "now",
                        style: TextStyle(color: Colors.grey),
                      )
                    ],
                  )
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
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Your order has been delivered"),
                      Text(
                        "now",
                        style: TextStyle(color: Colors.grey),
                      )
                    ],
                  )
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
                      "Lorem ipsum dolor sit amet, consectetur\nadipiscing elit, sed do eiusmod tempor \nincididunt ut labore et dolore magna aliqua.")
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
                      "Lorem ipsum dolor sit amet, consectetur\nadipiscing elit, sed do eiusmod tempor \nincididunt ut labore et dolore magna aliqua.")
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
                      "Lorem ipsum dolor sit amet, consectetur\nadipiscing elit, sed do eiusmod tempor \nincididunt ut labore et dolore magna aliqua.")
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
                      "Lorem ipsum dolor sit amet, consectetur\nadipiscing elit, sed do eiusmod tempor \nincididunt ut labore et dolore magna aliqua.")
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
                      "Lorem ipsum dolor sit amet, consectetur\nadipiscing elit, sed do eiusmod tempor \nincididunt ut labore et dolore magna aliqua.")
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
                      "Lorem ipsum dolor sit amet, consectetur\nadipiscing elit, sed do eiusmod tempor \nincididunt ut labore et dolore magna aliqua.")
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
                      "Lorem ipsum dolor sit amet, consectetur\nadipiscing elit, sed do eiusmod tempor \nincididunt ut labore et dolore magna aliqua.")
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
