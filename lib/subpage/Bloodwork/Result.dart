import 'dart:convert';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:thyroidclass/subpage/Bloodwork/BloodworkForm.dart';
import 'package:thyroidclass/subpage/Bloodwork/Loading.dart';
import 'package:http/http.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class Result extends StatefulWidget {
  final TSH, T3, TT4, T4U, FTI;
  Result({this.TSH, this.T3, this.TT4, this.T4U, this.FTI});

  @override
  _BloodworkFormState createState() => _BloodworkFormState();
}

class _BloodworkFormState extends State<Result> {
  int? result;

  Future<void> predict() async {
    try {
      String url =
          'https://https://thyrocarethesis.herokuapp.com/predict/?TSH=${widget.TSH}&T3=${widget.T3}&TT4=${widget.TT4}&T4U=${widget.T4U}&FTI=${widget.FTI}';
      Response input_query = await get(Uri.parse(url));
      setState(() {
        result = jsonDecode(input_query.body)['classes'];
      });
    } on FirebaseAuthException catch (e) {
      Alert(
              context: context,
              title: 'Error',
              desc: e.message,
              buttons: [],
              style: AlertStyle(backgroundColor: Colors.cyan))
          .show();
    }
  }

  @override
  void initState() {
    predict();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (result == null) {
      return Loading();
    } else {
      return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.black,
          centerTitle: true,
          title: Text(
            'Thyroid Disease Classification',
            style: TextStyle(
              fontSize: 28.0,
              color: Colors.blue,
            ),
          ),
        ),
        body: Builder(
          builder: (context) => SingleChildScrollView(
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/home.jpg'),
                  fit: BoxFit.fill,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: Text(
                      'Prediction using Random Forest Classifier',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.orangeAccent,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Text(
                      'Rs. $result',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  RaisedButton(
                    color: Colors.blue,
                    padding: EdgeInsets.all(15),
                    shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: Colors.blue,
                          width: 5,
                        ),
                        borderRadius: BorderRadius.circular(15)),
                    child: Text(
                      'Predict Another Thyroid Disease',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    }
  }
}
