import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:thyroidclass/subpage/Bloodwork/BloodworkForm.dart';
import 'package:http/http.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class Result extends StatefulWidget {
  final T3, T4U;

  String url = "https://thyrocarethesis.herokuapp.com/";
  Result({
    this.T3,
    this.T4U,
    num? T4,
  });

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }

//  @override
//  _HomeState createState() => _HomeState();
}

//class _HomeState extends State<Result> {
//  late String prediction;

//  Future<void> predict() async {
//   try {
//      JSONObject jsonObject = new JSONObject(response);
//      String data = jsonObject.getString("placement");
//     if(data.equals("1")){
//        result.setText("Placement Hoga");
//      }else{
//        result.setText("Placement Nahi Hoga");
//      }
//   } catch (JSONException e) {
//    e.printStackTrace();
//    }

//  }
//},
