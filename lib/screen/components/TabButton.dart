import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class TabButton extends StatelessWidget {
  final String buttonText;
  final Function press;
  TabButton({
    Key? key,
    required this.buttonText,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: MediaQuery.of(context).size.height * 0.07,
      width: MediaQuery.of(context).size.height * 0.22,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16), color: Color(0xff1CC8A5)),
      child: Text(
        buttonText,
        style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 15,
            fontFamily: 'Urbanist'),
      ),
    );
  }
}
