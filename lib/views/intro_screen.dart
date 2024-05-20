import 'package:flutter/material.dart';

import 'bottom_navigatoin_bar.dart';
import 'home_screen.dart';

class Intro_Screen extends StatefulWidget {
  const Intro_Screen({Key? key}) : super(key: key);

  @override
  State<Intro_Screen> createState() => _Intro_ScreenState();
}

List intro = [
  {
    'img': 'assets/images/Find food you love vector.png',
    'title': 'Find Food You Love',
    'subtitle':
        'Discover the best foods from over 1000\nrestaurants and fast delivery to your doorstep'
  },
  {
    'img': 'assets/images/Live tracking vector.png',
    'title': 'Fast Delivery',
    'subtitle': 'Fast food delivery to your home,office\nwherever you are'
  },
  {
    'img': 'assets/images/Delivery vector.png',
    'title': 'Live Tracking',
    'subtitle':
        'Realtime tracking of your foodon the app\nonce you placed the order'
  },
];

int pageview = 0;

class _Intro_ScreenState extends State<Intro_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                SizedBox(
                  height: 550,
                  child: PageView.builder(
                    physics: BouncingScrollPhysics(),
                    onPageChanged: (value) {
                      setState(() {
                        pageview = value;
                      });
                    },
                    itemCount: 3,
                    itemBuilder: (context, index) => Column(
                      children: [
                        Image.asset(
                          intro[index]['img'],
                          height: 270,
                          width: 270,
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        Text(
                          intro[index]['title'],
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey.shade600,
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          intro[index]['subtitle'],
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey.shade500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom: 200,
                  left: 0,
                  right: 0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      3,
                      (index) => Container(
                        margin: EdgeInsets.symmetric(horizontal: 3),
                        height: 7,
                        width: 7,
                        decoration: BoxDecoration(
                          color: pageview == index
                              ? Color(
                                  0xffFC6011,
                                )
                              : Colors.grey.shade300,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: MaterialButton(
                onPressed: () {
                  setState(() {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => bottom_navigatoir_bar(),
                        ));
                  });
                },
                height: 55,
                minWidth: double.infinity,
                shape: UnderlineInputBorder(
                  borderRadius: BorderRadius.circular(40),
                  borderSide: BorderSide.none,
                ),
                color: Color(
                  0xffFC6011,
                ),
                child: Text(
                  'Next',
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
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
