import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class PrimaryButton extends StatelessWidget {
  final String buttonText;
  final Function press;
  PrimaryButton({
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
          borderRadius: BorderRadius.circular(16), color: Colors.white70),
      child: Text(
        buttonText,
        style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold),
      ),
    );
  }
}
