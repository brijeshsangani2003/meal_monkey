import 'package:flutter/material.dart';

class Desserts_Screen extends StatefulWidget {
  const Desserts_Screen({super.key});

  @override
  State<Desserts_Screen> createState() => _Desserts_ScreenState();
}

class _Desserts_ScreenState extends State<Desserts_Screen> {
  List d1 = [
    {
      'image': 'assets/images/d1.png',
      'like': '4.9',
      'title': 'French Apple Pie',
      'stitle': 'Minute by tuk tuk'
    },
    {
      'image': 'assets/images/d2.png',
      'like': '4.7',
      'title': 'Dark Chocolate Cake',
      'stitle': 'Cakes by Tella',
    },
    {
      'image':
          'assets/images/aurelien-lemasson-theobald-x00CzBt4Dfk-unsplash.png',
      'like': '4.9',
      'title': 'Street Shake',
      'stitle': 'Cafe Racer',
    },
    {
      'image': 'assets/images/d4.png',
      'like': '4.9',
      'title': 'Fudgy Chewy Brownies',
      'stitle': 'Minute by tuk tuk',
    }
  ];
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 40),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.arrow_back_ios_new_outlined,
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Desserts",
                      style: TextStyle(
                          color: Color(0xff4A4B4D),
                          fontSize: 28,
                          fontWeight: FontWeight.w500),
                    ),
                    Spacer(),
                    Icon(
                      Icons.shopping_cart,
                      color: Colors.black,
                      size: 30,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.03,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                  decoration: InputDecoration(
                      fillColor: Colors.grey.shade300,
                      filled: true,
                      prefixIcon: Icon(
                        Icons.search_outlined,
                        color: Colors.black54,
                        size: 30,
                      ),
                      hintText: 'Search food',
                      hintStyle:
                          TextStyle(color: Colors.grey.shade500, fontSize: 20),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(30)),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(30))),
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              ListView.builder(
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 4,
                itemBuilder: (context, index) => Container(
                  height: height * 0.250,
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(vertical: 3),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            d1[index]['image'],
                          ),
                          fit: BoxFit.cover)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          d1[index]['title'],
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 20),
                          child: Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.orange.shade500,
                                size: 20,
                              ),
                              SizedBox(
                                width: 3,
                              ),
                              Text(
                                d1[index]['like'],
                                style: TextStyle(
                                    color: Colors.orange.shade500,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w700),
                              ),
                              SizedBox(
                                width: 3,
                              ),
                              Text(
                                d1[index]['stitle'],
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w300,
                                    fontSize: 13),
                              ),
                              SizedBox(
                                width: 3,
                              ),
                              Text(
                                "Desserts",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w300,
                                    color: Colors.white),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
