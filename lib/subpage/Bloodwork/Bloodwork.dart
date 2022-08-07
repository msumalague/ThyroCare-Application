import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:thyroidclass/screen/components/TabButton.dart';
import 'package:thyroidclass/subpage/Bloodwork/BloodworkForm.dart';

class Bloodwork extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            Image.asset("assets/images/bloodworkbanner.png"),
            SizedBox(
              height: 1.0,
            ),
            Container(
                alignment: Alignment.topLeft,
                margin: const EdgeInsets.only(left: 20, top: 20, right: 20),
                child: new Column(children: <Widget>[
                  Text(
                    'Blood Test',
                    style: TextStyle(
                        fontFamily: 'Urbanist',
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87),
                  ),
                ])),
            Container(
              margin: const EdgeInsets.only(left: 25, top: 25, right: 25),
              child: new Row(children: [
                Icon(
                  Icons.bloodtype_rounded,
                  color: Colors.teal,
                  size: 38,
                ),
                SizedBox(width: 10),
                Text(
                  'Take blood test in one location for quick and \neasy access.',
                  style: TextStyle(
                      fontFamily: 'Urbanist',
                      fontSize: 14,
                      color: Colors.black87),
                ),
              ]),
            ),
            SizedBox(
              height: 5.0,
            ),
            Container(
              margin: const EdgeInsets.only(left: 25, top: 25, right: 25),
              child: new Row(children: [
                Icon(
                  Icons.health_and_safety,
                  color: Colors.teal,
                  size: 38,
                ),
                SizedBox(width: 10),
                Text(
                  'This will guide you in determining whether you \n are hypothyroid, hyperthyroid, or euthyroid. ',
                  style: TextStyle(
                      fontFamily: 'Urbanist',
                      fontSize: 14,
                      color: Colors.black87),
                ),
              ]),
            ),
            SizedBox(
              height: 35.0,
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
                  buttonText: 'TAKE BLOOD TEST',
                  press: () {},
                )),
          ],
        ),
      ),
    );
  }
}
