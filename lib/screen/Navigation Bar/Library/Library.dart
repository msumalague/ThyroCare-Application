import 'package:flutter/material.dart';
import 'package:thyroidclass/screen/Navigation%20Bar/Library/TFT.dart';
import 'package:thyroidclass/screen/Navigation%20Bar/Library/Thyroid%20Disease.dart';
import 'package:thyroidclass/screen/Navigation%20Bar/Library/Thyroid.dart';

class Library extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final radius = MediaQuery.of(context).size.shortestSide * .4;
    final borderWidth = radius / 12;
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Color(0xFF1CC8A5),
          centerTitle: true,
          title: Image.asset(
            'assets/images/banner.png',
            height: 50,
          ),
          toolbarHeight: 70,
        ),
        body: Builder(
            builder: (context) => SingleChildScrollView(
                child: Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.all(20),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            child: Column(children: [
                              Text(
                                'Library',
                                style: TextStyle(
                                  color: Colors.teal,
                                  fontFamily: "Pacifico",
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: size.height * 0.03),
                              MaterialButton(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(16.0))),
                                  elevation: 5.0,
                                  color: Color(0xFF1CC8A5),
                                  height:
                                      MediaQuery.of(context).size.height * 0.07,
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => Thyroid(),
                                        ));
                                  },
                                  child: Container(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.08,
                                      width:
                                          MediaQuery.of(context).size.height *
                                              0.35,
                                      alignment: Alignment.center,
                                      child: Text(
                                          "THYROID DEFINITION AND FUNCTION",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold)))),
                              SizedBox(height: size.height * 0.03),
                              MaterialButton(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(16.0))),
                                  elevation: 5.0,
                                  color: Color(0xFF1CC8A5),
                                  height:
                                      MediaQuery.of(context).size.height * 0.07,
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => ThyDisease(),
                                        ));
                                  },
                                  child: Container(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.08,
                                      width:
                                          MediaQuery.of(context).size.height *
                                              0.35,
                                      alignment: Alignment.center,
                                      child: Text("THYROID DISEASE",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold)))),
                              SizedBox(height: size.height * 0.03),
                              MaterialButton(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(16.0))),
                                  elevation: 5.0,
                                  color: Color(0xFF1CC8A5),
                                  height:
                                      MediaQuery.of(context).size.height * 0.07,
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => TFT(),
                                        ));
                                  },
                                  child: Container(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.08,
                                      width:
                                          MediaQuery.of(context).size.height *
                                              0.35,
                                      alignment: Alignment.center,
                                      child: Text("THYROID FUNCTIONALITY TEST",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold)))),
                            ]),
                          )
                        ])))));
  }
}
