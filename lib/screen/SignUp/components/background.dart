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
                    Colors.blue.shade50, // fromARGB Decimal
                    Colors.blue.shade100,
                    Colors.blue.shade200,
                  ],
                )),
                child: Stack(alignment: Alignment.center, children: <Widget>[
                  Positioned(
                      top: 70,
                      child: Image.asset(
                        "assets/images/LogIn.png",
                        width: size.width * 0.5,
                      )),
                  child,
                ]))));
  }
}
