import 'package:flutter/material.dart';

class offer_screen extends StatefulWidget {
  const offer_screen({Key? key}) : super(key: key);

  @override
  State<offer_screen> createState() => _offer_screenState();
}

class _offer_screenState extends State<offer_screen> {
  List d1 = [
    {
      'image': 'assets/images/d1.png',
      'like': '4.9',
      'title': 'French Apple Pie',
    },
    {
      'image': 'assets/images/d2.png',
      'like': '4.7',
      'title': 'Dark Chocolate Cake',
    },
    {
      'image':
          'assets/images/aurelien-lemasson-theobald-x00CzBt4Dfk-unsplash.png',
      'like': '4.9',
      'title': 'Street Shake',
    },
    {
      'image': 'assets/images/d4.png',
      'like': '4.9',
      'title': 'Fudgy Chewy Brownies',
    }
  ];
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 40),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: Row(
                  children: [
                    Text(
                      "Latest Offers",
                      style: TextStyle(
                          color: Color(0xff4A4B4D),
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    ),
                    Spacer(),
                    Icon(
                      Icons.shopping_cart,
                      color: Colors.black,
                      size: 20,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.01,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text("Find discounts, Offers special\nmeals and more!"),
              ),
              SizedBox(
                height: height * 0.01,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: MaterialButton(
                  onPressed: () {},
                  color: Colors.orange,
                  shape: UnderlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide.none),
                  child: Text(
                    "Check Offers",
                    style: TextStyle(color: Colors.white),
                  ),
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
                itemBuilder: (context, index) => Column(
                  children: [
                    Container(
                      height: height * 0.225,
                      width: double.infinity,
                      margin: EdgeInsets.symmetric(vertical: 3),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                d1[index]['image'],
                              ),
                              fit: BoxFit.cover)),
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            d1[index]['title'],
                            style: TextStyle(color: Colors.black, fontSize: 18),
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
                                  "(124 ratings) Café     Western Food",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w300,
                                      fontSize: 12),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
