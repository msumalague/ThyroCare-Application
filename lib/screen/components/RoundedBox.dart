import 'package:flutter/material.dart';

class RoundedBox extends StatelessWidget {
  final String WelcomeText;
  final Widget child;
  const RoundedBox({
    Key? key,
    required this.WelcomeText,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: MediaQuery.of(context).size.height * 0.30,
      width: MediaQuery.of(context).size.height * 0.20,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16), color: Color(0xffBBF9A6)),
      child: Text(
        WelcomeText,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontFamily: 'RubikeMicrobe',
        ),
      ),
    );
  }
}
