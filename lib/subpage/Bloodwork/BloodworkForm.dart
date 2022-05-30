import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

import 'package:path/path.dart' as Path;
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:thyroidclass/subpage/Medicine/UI/MedicineReminder.dart';
import 'package:thyroidclass/subpage/Medicine/UI/convert_time.dart';
import 'package:thyroidclass/subpage/Medicine/global_bloc.dart';
import 'package:thyroidclass/subpage/Medicine/models/errors.dart';
import 'package:thyroidclass/subpage/Medicine/models/medicine.dart';
import 'package:thyroidclass/subpage/Medicine/UI/new_entry_bloc.dart';
import 'package:thyroidclass/subpage/Medicine/UI/SuccessScreen.dart';
import 'package:provider/provider.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class BloodworkForm extends StatefulWidget {
  @override
  _BloodworkFormState createState() => _BloodworkFormState();
}

class _BloodworkFormState extends State<BloodworkForm> {
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF1CC8A5),
          elevation: 0.0,
        ),
        body: Container(
          color: Color(0xFFF6F8FC),
          child: Column(
            children: <Widget>[
              Flexible(
                flex: 3,
                child: TopContainer(),
              ),
              SizedBox(
                height: 10,
              ),
              Flexible(
                flex: 7,
                child: BottomContainer(),
              ),
            ],
          ),
        ));
  }
}

class TopContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.elliptical(50, 27),
            bottomRight: Radius.elliptical(50, 27),
          ),
          boxShadow: [
            BoxShadow(
              blurRadius: 5,
              color: Colors.grey.shade400,
              offset: Offset(0, 3.5),
            )
          ],
          color: Color(0xFF1CC8A5),
        ),
        width: double.infinity,
        child: Column(children: <Widget>[
          Padding(
            padding: EdgeInsets.only(
              bottom: 10,
            ),
            child: Text(
              "BLOOD TEST",
              style: TextStyle(
                fontFamily: "Urbanist",
                fontSize: 44,
                color: Colors.white,
              ),
            ),
          ),
          Divider(
            color: Color(0xFF1CC8A5),
          ),
          Padding(
            padding: EdgeInsets.only(top: 12.0),
            child: Center(
              child: Text(
                "Kindly fill out all the input fields.",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontFamily: "Urbanist",
                ),
              ),
            ),
          )
        ]));
  }
}

class BottomContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
