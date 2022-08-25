import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final radius = MediaQuery.of(context).size.shortestSide * .4;
    final borderWidth = radius / 12;
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Color(0xFF1CC8A5),
          centerTitle: true,
          title: Image.asset(
            'assets/images/banner.png',
            height: 50,
          ),
          toolbarHeight: 70,
        ),
        body: Builder(
            builder: (context) => SingleChildScrollView(
                child: Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.all(20),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                              child: Column(children: [
                            Text(
                              'About Us',
                              style: TextStyle(
                                color: Colors.teal,
                                fontFamily: "Pacifico",
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: size.height * 0.03),
                            Text(
                                "   The ThyroCare app allows users to visualize and assess their thyroid condition all in one convenient location. "
                                "The ThyroCare mobile application addresses major pain points users encounter when managing their thyroid health through key product features such as blood test, medication management and medicine reminder.",
                                style: TextStyle(
                                  color: Colors.black87,
                                  fontSize: 16,
                                  fontFamily: 'Urbanist',
                                ),
                                textAlign: TextAlign.justify),
                            SizedBox(height: size.height * 0.03),
                            Text(
                              'Meet the ThyroCare Team',
                              style: TextStyle(
                                color: Colors.teal,
                                fontFamily: "Pacifico",
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: size.height * 0.03),
                            Text(
                                "   A group of students committed to transforming healthcare by providing personalized and data-driven consumer experiences.",
                                style: TextStyle(
                                  color: Colors.black87,
                                  fontSize: 16,
                                  fontFamily: 'Urbanist',
                                ),
                                textAlign: TextAlign.justify),
                            //for images of team
                            Container(
                              margin: const EdgeInsets.only(
                                top: 20,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Expanded(
                                    child: Column(
                                      children: <Widget>[
                                        Image.asset(
                                          'assets/images/RomaAG.jpg',
                                        ),
                                        Text(
                                            'Roma Angelyn Garcia\nMachine Learning Programmer',
                                            style: TextStyle(
                                              color: Colors.black87,
                                              fontSize: 12,
                                              fontFamily: 'Urbanist',
                                            ),
                                            textAlign: TextAlign.center),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Column(
                                      children: <Widget>[
                                        Image.asset('assets/images/MDenly.jpg'),
                                        Text(
                                            'Mary Denly Plata\nProject\nResearcher',
                                            style: TextStyle(
                                              color: Colors.black87,
                                              fontSize: 12,
                                              fontFamily: 'Urbanist',
                                            ),
                                            textAlign: TextAlign.center),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Column(
                                      children: <Widget>[
                                        Image.asset(
                                            'assets/images/Formal Attire.png'),
                                        Text(
                                            'Mairene Sumalague\nFrontend and Backend Developer',
                                            style: TextStyle(
                                              color: Colors.black87,
                                              fontSize: 12,
                                              fontFamily: 'Urbanist',
                                            ),
                                            textAlign: TextAlign.center),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ]))
                        ])))));
  }
}
