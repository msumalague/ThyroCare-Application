import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({
    Key? key,
    required this.child,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: SafeArea(
            child: Container(
                height: size.height * 0.12,
                decoration: BoxDecoration(
                    gradient: new LinearGradient(
                        colors: [Colors.teal, Color(0xff51A9A9)])),
                child: Stack(alignment: Alignment.center, children: <Widget>[
                  Positioned(
                      child: Image.asset(
                    "assets/images/banner.png",
                    width: size.width * 1,
                    height: size.height * 0.08,
                  )),
                  child,
                ]))));
  }
}
