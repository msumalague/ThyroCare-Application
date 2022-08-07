import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/LoadingPage.jpg'),
              fit: BoxFit.fill,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 100,
              ),
              Text('Finalizing the Result',
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 35,
                    fontFamily: "Pacifico",
                  ),
                  textAlign: TextAlign.center),
              SizedBox(
                height: 20,
              ),
              SpinKitHourGlass(
                color: Color(0xFF1CC8A5),
                size: 100,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
