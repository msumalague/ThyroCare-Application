import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:http/http.dart';
import 'package:path/path.dart' as Path;
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:thyroidclass/subpage/Medicine/UI/MedicineReminder.dart';
import 'package:thyroidclass/subpage/Medicine/UI/New%20Entry.dart';
import 'package:thyroidclass/subpage/Medicine/UI/convert_time.dart';
import 'package:thyroidclass/subpage/Medicine/global_bloc.dart';
import 'package:thyroidclass/subpage/Medicine/models/errors.dart';
import 'package:thyroidclass/subpage/Medicine/models/medicine.dart';
import 'package:thyroidclass/subpage/Medicine/UI/new_entry_bloc.dart';
import 'package:thyroidclass/subpage/Medicine/UI/SuccessScreen.dart';
import 'package:provider/provider.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

import 'Result.dart';

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
              bottom: 5,
            ),
            child: Text(
              "BLOOD TEST",
              style: TextStyle(
                fontFamily: "Urbanist",
                fontSize: 40,
                color: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 12.0, left: 10, right: 10),
            child: Center(
              child: Text(
                "This section will help you to determine whether you have hypothyroidism, hyperthyroidism, or euthyroidism. "
                "\nKindly fill out all the the input fields in order to see the result.",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                  fontFamily: "Urbanist",
                ),
                textAlign: TextAlign.center,
              ),
            ),
          )
        ]));
  }
}

class BottomContainer extends StatefulWidget {
  @override
  _BottomContainerState createState() => _BottomContainerState();
}

class _BottomContainerState extends State<BottomContainer> {
  late num T3, T4U;
  validform() {
    if (T3 != null && T4U != null) {
      return true;
    } else {
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            width: MediaQuery.of(context).size.width,
            alignment: Alignment.topLeft,
            margin: const EdgeInsets.only(left: 30, top: 20, right: 30),
            child: Form(
                child: SingleChildScrollView(
                    child: Column(children: <Widget>[
              Container(
                alignment: Alignment.topLeft,
                child: new Column(children: <Widget>[
                  PanelTitle(
                    title: "Add T3",
                    isRequired: true,
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  TextField(
                    decoration: const InputDecoration(
                        labelText: 'Enter the value of T3',
                        border: OutlineInputBorder(),
                        errorBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.red, width: 5))),
                    onChanged: (value) {
                      if (value != null) {
                        setState(() {
                          T3 = double.parse(value);
                        });
                      }
                    },
                    onSubmitted: (value) {
                      FocusScope.of(context).nextFocus();
                    },
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  PanelTitle(
                    title: "Add T4U",
                    isRequired: true,
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  TextField(
                    decoration: const InputDecoration(
                        labelText: 'Enter the value of T4U',
                        border: OutlineInputBorder(),
                        errorBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.red, width: 5))),
                    onChanged: (value) {
                      if (value != null) {
                        setState(() {
                          T4U = double.parse(value);
                        });
                      }
                    },
                    onSubmitted: (value) {
                      FocusScope.of(context).nextFocus();
                    },
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    MaterialButton(
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(16.0))),
                        elevation: 5.0,
                        color: Color(0xFF1CC8A5),
                        height: MediaQuery.of(context).size.height * 0.07,
                        onPressed: () async {
                          {
                            if (validform()) {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Result(
                                            T3: T3,
                                            T4: T4U,
                                          )));
                            } else {
                              Alert(
                                      context: context,
                                      title: 'All fields are required',
                                      buttons: [],
                                      style: AlertStyle(
                                          backgroundColor: Colors.cyan))
                                  .show();
                            }
                          }
                        },
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.07,
                          width: MediaQuery.of(context).size.height * 0.22,
                          alignment: Alignment.center,
                          child: Text("PREDICT",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold)),
                        ))
                  ])
                ]),
              )
            ])))));
  }
}

class PanelTitle extends StatelessWidget {
  final String title;
  final bool isRequired;
  PanelTitle({
    Key? key,
    required this.title,
    required this.isRequired,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 260),
      child: Text.rich(
        TextSpan(children: <TextSpan>[
          TextSpan(
            text: title,
            style: TextStyle(
                fontFamily: 'Urbanist', fontSize: 20, color: Colors.black87),
          ),
          TextSpan(
            text: isRequired ? " *" : "",
            style: TextStyle(fontSize: 14, color: Colors.red),
          ),
        ]),
      ),
    );
  }
}
