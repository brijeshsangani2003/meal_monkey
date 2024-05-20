import 'package:flutter/material.dart';
import 'package:meal_monkey/common_widget/common_button.dart';
import 'package:meal_monkey/views/bottom_navigatoin_bar.dart';

import '../common_widget/common_textfield.dart';

class checkout_screen extends StatefulWidget {
  const checkout_screen({Key? key}) : super(key: key);

  @override
  State<checkout_screen> createState() => _checkout_screenState();
}

class _checkout_screenState extends State<checkout_screen> {
  bool isswitched = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
                    'Checkout',
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
              Text(
                "Delivery Address",
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text("653 Nostrand Ave.,\nBrooklyn, NY 11216"),
                  Spacer(),
                  Text(
                    "Change",
                    style: TextStyle(color: Colors.orange, fontSize: 13),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Divider(
                thickness: 3,
                color: Colors.black38,
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text(
                    "Payment method",
                    style: TextStyle(color: Colors.grey),
                  ),
                  Spacer(),
                  InkWell(
                      onTap: () {
                        showModalBottomSheet(
                            //isDismissible: false,
                            isScrollControlled: true,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(
                                top: Radius.circular(20),
                              ),
                            ),
                            context: context,
                            builder: (context) => StatefulBuilder(
                                  builder: (context, setState) => Container(
                                    height: 610,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.vertical(
                                        top: Radius.circular(20),
                                      ),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20, vertical: 15),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                "Add Credit/Debit Card",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 16,
                                                ),
                                              ),
                                              IconButton(
                                                onPressed: () {
                                                  Navigator.pop(context);
                                                },
                                                icon: Icon(Icons.close),
                                              )
                                            ],
                                          ),
                                          Divider(
                                            thickness: 0.5,
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          common_textformfield(
                                            hintText: 'Card Number',
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                'Expiry',
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w300,
                                                ),
                                              ),
                                              SizedBox(
                                                width: 35,
                                              ),
                                              Expanded(
                                                child: common_textformfield(
                                                  keyboardType:
                                                      TextInputType.number,
                                                  hintText: 'MM',
                                                ),
                                              ),
                                              SizedBox(
                                                width: 30,
                                              ),
                                              Expanded(
                                                child: common_textformfield(
                                                  keyboardType:
                                                      TextInputType.number,
                                                  hintText: 'YY',
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 15,
                                          ),
                                          common_textformfield(
                                            hintText: 'Security Code',
                                          ),
                                          SizedBox(
                                            height: 15,
                                          ),
                                          common_textformfield(
                                            hintText: 'First Name',
                                          ),
                                          SizedBox(
                                            height: 15,
                                          ),
                                          common_textformfield(
                                            hintText: 'Last Name',
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                'You can remove this card',
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w300,
                                                ),
                                              ),
                                              Spacer(),
                                              Switch.adaptive(
                                                value: isswitched,
                                                onChanged: (value) {
                                                  setState(() {
                                                    isswitched = value;
                                                  });
                                                },
                                              )
                                            ],
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          MaterialButton(
                                            onPressed: () {},
                                            height: 55,
                                            minWidth: double.infinity,
                                            color: Color(0xffFC6011),
                                            shape: UnderlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(40),
                                                borderSide: BorderSide.none),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Icon(
                                                  (Icons.add),
                                                  color: Colors.white,
                                                  size: 28,
                                                ),
                                                SizedBox(
                                                  width: 25,
                                                ),
                                                Text(
                                                  'Add Card',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 16,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ));
                      },
                      child: Text(
                        "Add Card",
                        style: TextStyle(color: Colors.orange, fontSize: 13),
                      ))
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.black)),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Row(
                    children: [
                      Text(
                        "Cash on delivery",
                        style: TextStyle(fontSize: 12),
                      ),
                      Spacer(),
                      Container(
                        height: 18,
                        width: 18,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.orange)),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.black)),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Row(
                    children: [
                      Image.asset("assets/images/visa2.png"),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "**** **** **** 2187",
                        style: TextStyle(fontSize: 12),
                      ),
                      Spacer(),
                      Container(
                        height: 18,
                        width: 18,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.orange)),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.black)),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Row(
                    children: [
                      Image.asset("assets/images/p.png"),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "johndoe@email.com",
                        style: TextStyle(fontSize: 12),
                      ),
                      Spacer(),
                      Container(
                        height: 18,
                        width: 18,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.orange)),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Divider(
                thickness: 3,
                color: Colors.black38,
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Sub Total"),
                      SizedBox(
                        height: 10,
                      ),
                      Text("Delivery Cost"),
                      SizedBox(
                        height: 10,
                      ),
                      Text("Discount"),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                  Spacer(),
                  Column(
                    children: [
                      Text(
                        "\$68",
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "\$2",
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "-\$4",
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  )
                ],
              ),
              Divider(
                thickness: 1,
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [Text("Total"), Spacer(), Text("-\$66")],
              ),
              SizedBox(
                height: 20,
              ),
              Divider(
                thickness: 3,
                color: Colors.black38,
              ),
              SizedBox(
                height: 20,
              ),
              common_button(
                onTap: () {
                  showModalBottomSheet(
                    isScrollControlled: true,
                    context: context,
                    builder: (context) => StatefulBuilder(
                      builder: (context, setState) => Container(
                        height: 660,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(20),
                          ),
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                IconButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    icon: Icon(Icons.close)),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Image.asset(
                              'assets/images/done.png',
                              height: 250,
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            Text(
                              "Thank You!",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 25),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text('for your order'),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                                'Your Order is now being processed. We will let you\n     know once the order is picked from the outlet.\n                   Check the status of your Order'),
                            SizedBox(
                              height: 20,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: common_button(
                                onTap: () {},
                                title: 'Track my order',
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            TextButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            bottom_navigatoir_bar(),
                                      ));
                                },
                                child: Text(
                                  "Back to home",
                                  style: TextStyle(color: Colors.black),
                                ))
                          ],
                        ),
                      ),
                    ),
                  );
                },
                title: 'Send order',
              )
            ],
          ),
        ),
      ),
    );
  }
}
