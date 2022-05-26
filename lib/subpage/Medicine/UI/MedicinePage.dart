import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:thyroidclass/screen/components/TabButton.dart';
import 'package:thyroidclass/subpage/Medicine/UI/MedicineReminder.dart';

class MedicinePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            Image.asset("assets/images/medicinebanner.png"),
            SizedBox(
              height: 1.0,
            ),
            Container(
                alignment: Alignment.topLeft,
                margin: const EdgeInsets.only(left: 20, top: 20, right: 20),
                child: new Column(children: <Widget>[
                  Text(
                    'Medicines',
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
                  Icons.calendar_month,
                  color: Colors.teal,
                  size: 38,
                ),
                SizedBox(width: 10),
                Text(
                  'Our scheduling features allow you to personalize \nyour medication schedules.',
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
                  Icons.notifications_active,
                  color: Colors.teal,
                  size: 38,
                ),
                SizedBox(width: 10),
                Text(
                  'Never forget to take your medication. Set up and \nreceive reminders on a timely manner.',
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
                        builder: (context) => MedicineReminder(),
                      ));
                },
                child: TabButton(
                  buttonText: 'ADD MEDICINES',
                  press: () {},
                )),
          ],
        ),
      ),
    );
  }
}
