import 'package:flutter/material.dart';

class common_button extends StatelessWidget {
  final void Function()? onTap;
  final String? title;

  const common_button({super.key, this.onTap, this.title});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onTap,
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
        title!,
        style: TextStyle(
          fontSize: 17,
          color: Colors.white,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
