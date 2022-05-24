import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:thyroidclass/screen/components/TabButton.dart';
import 'package:thyroidclass/subpage/Bloodwork/BloodworkForm.dart';

class SymptomsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            Image.asset("assets/images/symptomsbanner.png"),
            SizedBox(
              height: 1.0,
            ),
            Container(
                alignment: Alignment.topLeft,
                margin: const EdgeInsets.only(left: 20, top: 20, right: 20),
                child: new Column(children: <Widget>[
                  Text(
                    'Symptoms',
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
                  Icons.remove_red_eye_rounded,
                  color: Colors.teal,
                  size: 38,
                ),
                SizedBox(width: 10),
                Text(
                  'Observe patterns by adding and monitoring \nsymptoms over time.',
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
                  Icons.track_changes,
                  color: Colors.teal,
                  size: 38,
                ),
                SizedBox(width: 10),
                Text(
                  'Examine how changes in medication affect your \nsymptoms and weight.',
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
                  Icons.monitor_heart,
                  color: Colors.teal,
                  size: 38,
                ),
                SizedBox(width: 10),
                Text(
                  'Reduce your anxiety by making health-related \ndecisions that are well-informed.',
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
                  buttonText: 'ADD SYMPTOMS',
                  press: () {},
                )),
          ],
        ),
      ),
    );
  }
}
