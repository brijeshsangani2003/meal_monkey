import 'package:flutter/material.dart';
import 'package:meal_monkey/common_widget/common_button.dart';
import 'package:meal_monkey/views/checkout.dart';

class my_order_screen extends StatefulWidget {
  const my_order_screen({Key? key}) : super(key: key);

  @override
  State<my_order_screen> createState() => _my_order_screenState();
}

class _my_order_screenState extends State<my_order_screen> {
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
                      setState(() {
                        Navigator.pop(context);
                      });
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
                    'My order',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w400,
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
                  Container(
                    height: 90,
                    width: 90,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10)),
                    child: Image.asset(
                      "assets/images/burger.png",
                      height: 10,
                      width: 10,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("King Burgers"),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.orange,
                            size: 17,
                          ),
                          Text(
                            " (124 ratings)",
                            style: TextStyle(color: Colors.grey, fontSize: 12),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Burger .  Western Food",
                        style: TextStyle(color: Colors.grey, fontSize: 12),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            color: Colors.orange,
                            size: 17,
                          ),
                          Text(
                            " No 03, 4th Lane, Newyork",
                            style: TextStyle(color: Colors.grey, fontSize: 12),
                          )
                        ],
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 220,
                width: double.infinity,
                color: Colors.grey.shade200,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text("Beef Burger x1"),
                          Spacer(),
                          Text("\$16")
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Divider(
                        thickness: 1,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Text("Classic Burger x1"),
                          Spacer(),
                          Text("\$16")
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Divider(
                        thickness: 1,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Text("Cheese Chicken Burger x1"),
                          Spacer(),
                          Text("\$16")
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Divider(
                        thickness: 1,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Text("Chicken Legs Basket x1"),
                          Spacer(),
                          Text("\$16")
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Divider(
                        thickness: 1,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Text("French Fries Large x1"),
                          Spacer(),
                          Text("\$16")
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text("Delivery Instrusctions"),
                  Spacer(),
                  Text(
                    "Add Notes",
                    style: TextStyle(color: Colors.orange),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Divider(
                thickness: 1,
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text("Sub Total"),
                  Spacer(),
                  Text(
                    "\$68",
                    style: TextStyle(color: Colors.orange),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text("Delivery Cost"),
                  Spacer(),
                  Text(
                    "\$2",
                    style: TextStyle(color: Colors.orange),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Divider(
                thickness: 1,
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text("Total"),
                  Spacer(),
                  Text(
                    "\$70",
                    style: TextStyle(color: Colors.orange, fontSize: 20),
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              common_button(
                onTap: () {
                  setState(() {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => checkout_screen(),
                        ));
                  });
                },
                title: 'Checkout',
              )
            ],
          ),
        ),
      ),
    );
  }
}
