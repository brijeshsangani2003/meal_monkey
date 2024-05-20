import 'package:flutter/material.dart';
import 'package:meal_monkey/views/home_screen.dart';
import 'package:meal_monkey/views/menu_screen.dart';
import 'package:meal_monkey/views/more_detail_screen.dart';
import 'package:meal_monkey/views/offer_screen.dart';
import 'package:meal_monkey/views/profile_screen.dart';

class bottom_navigatoir_bar extends StatefulWidget {
  const bottom_navigatoir_bar({Key? key}) : super(key: key);

  @override
  State<bottom_navigatoir_bar> createState() => _bottom_navigatoir_barState();
}

class _bottom_navigatoir_barState extends State<bottom_navigatoir_bar> {
  int pageselected = 4;

  List screens = [
    menu_screen(),
    offer_screen(),
    profile_screen(),
    more_screen(),
    home_screen(),
  ];

  List bottombar = [
    {'icons': Icons.grid_view_sharp, 'title': 'Menu'},
    {'icons': Icons.local_offer, 'title': 'Offers'},
    {'icons': Icons.person, 'title': 'Profile'},
    {'icons': Icons.list, 'title': 'More'},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[pageselected],
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            pageselected = 4;
          });
        },
        backgroundColor: pageselected == 4 ? Colors.orange : Colors.grey,
        elevation: 0,
        child: Icon(Icons.home, color: Colors.white),
      ),
      bottomNavigationBar: BottomAppBar(
        notchMargin: 13, //home vali circle avtar ni niche size nu work kare.
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(
              4,
              (index) => InkWell(
                    onTap: () {
                      setState(() {
                        pageselected = index;
                      });
                    },
                    child: Padding(
                      padding: EdgeInsets.only(
                        top: 13,
                        bottom: 10,
                        right: index == 1 ? 10 : 0,
                        left: index == 2 ? 10 : 0,
                      ),
                      child: Column(
                        ///uper row ave aa niche lavi dey.
                        mainAxisSize: MainAxisSize.min,

                        children: [
                          Icon(
                            bottombar[index]['icons'],
                            color: pageselected == index
                                ? Colors.orange
                                : Colors.grey,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            bottombar[index]['title'],
                            style: TextStyle(
                              color: pageselected == index
                                  ? Colors.orange
                                  : Colors.grey,
                            ),
                          )
                        ],
                      ),
                    ),
                  )),
        ),
      ),
    );
  }
}
