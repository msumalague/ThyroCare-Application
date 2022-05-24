import 'package:flutter/material.dart';
import 'package:thyroidclass/screen/components/TabButton.dart';
import 'package:thyroidclass/subpage/Medicine/MedicinePage.dart';

class HomeMedicine extends StatelessWidget {
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
                    "assets/images/icon_m.png",
                    width: size.width * 0.35,
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Text(
                    'No medicines today',
                    style: TextStyle(
                        fontFamily: 'Urbanist',
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87),
                  ),
                  Text(
                    'Add your medications and supplements to receive smart reminders!',
                    style: TextStyle(
                        fontFamily: 'Urbanist',
                        fontSize: 15,
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
                              builder: (context) => MedicinePage(),
                            ));
                      },
                      child: TabButton(
                        buttonText: 'ADD MEDICINES',
                        press: () {},
                      )),
                ]))));
  }
}
