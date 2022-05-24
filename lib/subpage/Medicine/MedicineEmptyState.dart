import 'package:flutter/material.dart';

class MedicineEmptyState extends StatelessWidget {
  const MedicineEmptyState({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.only(left: 10, top: 10, right: 10),
      child: new Column(children: <Widget>[
        Text(
          'Medicine Reminder',
          style: TextStyle(
              fontFamily: 'Urbanist',
              fontSize: 25,
              color: Colors.black87,
              fontWeight: FontWeight.w800),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 8,
        ),
        Image.asset(
          "assets/images/meds.png",
          height: 270,
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          'Add the name and time for your medicines and \n supplements. Allow us to remind you by turning \n on your notifications!',
          style: TextStyle(
            fontFamily: 'Urbanist',
            fontSize: 16,
            color: Colors.black87,
          ),
          textAlign: TextAlign.center,
        ),
      ]),
    );
  }
}
