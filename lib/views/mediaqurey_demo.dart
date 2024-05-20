import 'package:flutter/material.dart';

class Demo extends StatelessWidget {
  const Demo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              height: height * 0.23,
              width: width * 0.54,
              color: Colors.green,
            ),
          ),
          SizedBox(
            height: height * 0.08,
          ),
          Center(
            child: Container(
              height: height * 0.23,
              width: width * 0.54,
              color: Colors.green,
            ),
          ),
        ],
      ),
    );
  }
}
