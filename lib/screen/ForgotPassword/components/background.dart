import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: SafeArea(
            child: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    Colors.teal.shade100, // fromARGB Decimal
                    Colors.teal.shade200,
                    Colors.teal.shade600,
                  ],
                )),
                child: Stack(alignment: Alignment.center, children: <Widget>[
                  Positioned(
                      top: 70,
                      child: Image.asset(
                        "assets/images/Forgot.png",
                        width: size.width * 0.65,
                      )),
                  child,
                ]))));
  }
}
