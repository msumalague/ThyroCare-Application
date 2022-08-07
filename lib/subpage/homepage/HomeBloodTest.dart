import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:thyroidclass/screen/components/TabButton.dart';
import 'package:thyroidclass/subpage/Bloodwork/Bloodwork.dart';
import 'package:thyroidclass/subpage/Bloodwork/BloodworkForm.dart';

class HomeBloodTest extends StatefulWidget {
  const HomeBloodTest({Key? key}) : super(key: key);

  @override
  _HomeBloodTestState createState() => _HomeBloodTestState();
}

class _HomeBloodTestState extends State<HomeBloodTest> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Container(
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.only(left: 40, top: 20, right: 40),
            child: SingleChildScrollView(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                  Image.asset(
                    "assets/images/HomeBloodTest.png",
                    width: size.width * 0.4,
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Text(
                    'Try our blood test feature to determine if you have thyroid disease',
                    style: TextStyle(
                        fontFamily: 'Urbanist',
                        fontSize: 16,
                        color: Colors.black87),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => BloodworkForm(),
                            ));
                      },
                      child: TabButton(
                        buttonText: 'BLOOD TEST',
                        press: () {},
                      )),
                ]))));
  }
}
