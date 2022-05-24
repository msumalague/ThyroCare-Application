import 'package:flutter/material.dart';
import 'package:thyroidclass/screen/Welcome/components/background.dart';
import 'package:thyroidclass/screen/SignUp/SignUpScreen.dart';
import 'package:thyroidclass/screen/Login/LoginScreen.dart';
import 'package:thyroidclass/screen/components/PrimaryButton.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
        child: SingleChildScrollView(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
          SizedBox(height: size.height * 0.35),
          Container(
              margin: EdgeInsets.fromLTRB(25, 10, 25, 10),
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: Column(children: [
                Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.fromLTRB(20, 100, 20, 0),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'WELCOME',
                            style: TextStyle(
                                fontFamily: 'RubikMicrobe',
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff04414F)),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(height: size.height * 0.10),
                          GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => LoginScreen(),
                                    ));
                              },
                              child: PrimaryButton(
                                buttonText: 'LOG IN',
                                press: () {},
                              )),
                          SizedBox(height: size.height * 0.02),
                          GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => SignUpScreen(),
                                    ));
                              },
                              child: PrimaryButton(
                                buttonText: 'REGISTER',
                                press: () {},
                              )),
                          SizedBox(height: size.height * 0.15),
                        ]))
              ]))
        ])));
  }
}
