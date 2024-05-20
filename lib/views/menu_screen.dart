import 'package:flutter/material.dart';

class menu_screen extends StatefulWidget {
  const menu_screen({Key? key}) : super(key: key);

  @override
  State<menu_screen> createState() => _menu_screenState();
}

class _menu_screenState extends State<menu_screen> {
  List image = [
    "assets/images/davide-cantelli-jpkfc5_d-DI-unsplash.png",
    "assets/images/allison-griffith-VCXk_bO97VQ-unsplash.png",
    "assets/images/Group 6844.png",
    "assets/images/c6cf8d18-0903-45ef-a251-b855a270605e-removebg-preview (1).png"
  ];
  List title = ['Food', 'Beverages', 'Desserts', 'Promotions'];
  List subtitle = ['120 Items', '220 Items', '155 Items', '255 Items'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Menu",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 23),
                  ),
                  InkResponse(
                      onTap: () {},
                      child: Icon(
                        Icons.shopping_cart,
                        color: Colors.black,
                      ))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                decoration: InputDecoration(
                  fillColor: Colors.grey.shade300,
                  filled: true,
                  prefixIcon: Icon(Icons.search_rounded),
                  hintText: 'Search food',
                  hintStyle: TextStyle(color: Colors.grey.shade400),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide.none),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide.none),
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: 550,
                  width: 110,
                  decoration: BoxDecoration(
                      color: Color(0xffFC6011),
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(40),
                          bottomRight: Radius.circular(40))),
                ),
                Positioned(
                  left: 70,
                  bottom: 20,
                  child: Column(
                    children: List.generate(
                        4,
                        (index) => Stack(
                              clipBehavior: Clip.none,
                              children: [
                                Container(
                                  margin: EdgeInsets.symmetric(vertical: 15),
                                  height: 100,
                                  width: 300,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.grey,
                                            offset: Offset(2, 2),
                                            spreadRadius: 2,
                                            blurRadius: 2)
                                      ],
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(30),
                                          bottomLeft: Radius.circular(15),
                                          topRight: Radius.circular(15),
                                          bottomRight: Radius.circular(30))),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 55),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          title[index],
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20),
                                        ),
                                        Text(
                                          subtitle[index],
                                          style: TextStyle(
                                              color: Colors.grey.shade400,
                                              fontSize: 12),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: -40,
                                  top: 0,
                                  bottom: 0,
                                  child: Image.asset(
                                    image[index],
                                    height: 80,
                                    width: 80,
                                  ),
                                ),
                                Positioned(
                                  right: -15,
                                  top: 0,
                                  bottom: 0,
                                  child: Container(
                                    height: 30,
                                    width: 30,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        shape: BoxShape.circle,
                                        boxShadow: [
                                          BoxShadow(
                                              color: Colors.grey,
                                              blurRadius: 2,
                                              spreadRadius: 2,
                                              offset: Offset(2, 2))
                                        ]),
                                    child: Icon(
                                      Icons.arrow_forward_ios,
                                      size: 17,
                                      color: Color(0xffFC6011),
                                    ),
                                  ),
                                )
                              ],
                            )),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
