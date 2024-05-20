import 'package:flutter/material.dart';
import 'package:meal_monkey/views/about.dart';
import 'package:meal_monkey/views/inbox.dart';
import 'package:meal_monkey/views/my_order.dart';
import 'package:meal_monkey/views/notification.dart';
import 'package:meal_monkey/views/payment_details.dart';

class more_screen extends StatefulWidget {
  const more_screen({Key? key}) : super(key: key);

  @override
  State<more_screen> createState() => _more_screenState();
}

class _more_screenState extends State<more_screen> {
  List icons = [
    Icons.clean_hands_rounded,
    Icons.lock,
    Icons.notifications,
    Icons.forward_to_inbox,
    Icons.abc_outlined,
  ];
  List title = [
    'Payment details',
    'My orders',
    'Notifications',
    'Inbox',
    'About us'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    "More",
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
              SizedBox(
                height: 25,
              ),
              Column(
                children: List.generate(
                    5,
                    (index) => Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Stack(
                            clipBehavior: Clip.none,
                            children: [
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    if (index == 0) {
                                      setState(() {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  Payment_Details(),
                                            ));
                                      });
                                    } else if (index == 1) {
                                      {
                                        setState(() {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    my_order_screen(),
                                              ));
                                        });
                                      }
                                    } else if (index == 2) {
                                      {
                                        setState(() {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    notification_screen(),
                                              ));
                                        });
                                      }
                                    } else if (index == 3) {
                                      {
                                        setState(() {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    inbox_screen(),
                                              ));
                                        });
                                      }
                                    } else if (index == 4) {
                                      {
                                        setState(() {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    about_us_screen(),
                                              ));
                                        });
                                      }
                                    }
                                  });
                                },
                                child: Container(
                                  height: 80,
                                  width: double.infinity,
                                  margin: EdgeInsets.symmetric(vertical: 10),
                                  decoration: BoxDecoration(
                                      color: Colors.grey.shade200),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 15),
                                    child: Row(
                                      children: [
                                        CircleAvatar(
                                          radius: 25,
                                          backgroundColor: Colors.grey.shade400,
                                          child: Icon(
                                            icons[index],
                                            color: Colors.black,
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 15,
                                        ),
                                        Text(
                                          title[index],
                                          style: TextStyle(color: Colors.black),
                                        ),
                                        SizedBox(
                                          width: 130,
                                        ),
                                        index == 2
                                            ? CircleAvatar(
                                                radius: 10,
                                                backgroundColor: Colors.red,
                                                child: Text(
                                                  '15',
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 10),
                                                ),
                                              )
                                            : SizedBox(),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 0,
                                bottom: 0,
                                right: -13,
                                child: CircleAvatar(
                                  radius: 15,
                                  backgroundColor: Colors.grey.shade300,
                                  child: Center(
                                    child: Icon(
                                      Icons.arrow_forward_ios,
                                      size: 15,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
