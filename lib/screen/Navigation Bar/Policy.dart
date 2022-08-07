import 'package:flutter/material.dart';

class Policy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
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
                                'Privacy Policy',
                                style: TextStyle(
                                  color: Colors.teal,
                                  fontFamily: "Pacifico",
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: size.height * 0.03),
                              Text(
                                  "    The ThyroCare team is dedicated to maintaining the security and privacy of your personal data. "
                                  "We value your privacy, and keeping your trust is of utmost importance to us.\n "
                                  "\n    How we gather, use, process, and disclose information about you is described in this privacy statement. You agree to our Terms of Use as well as the terms of our privacy policy (Privacy Policy) by using our website, app, "
                                  "and affiliated services. We encourage you to periodically review this Privacy Statement regarding the gathering, using, and disclosing of your information so that you are aware of any updates or changes we may have made. \n "
                                  "\n   We also recommend that you take precautionary measures to ensure the privacy of your data. Always make sure that no one can see or access your personal accounts or login username and password information. Remember to log out of the ThyroCare Application or Services whenever you use a public computer, such as a library or university, or a shared system. When you access the ThyroCare Application, services via your employer's computer, a mobile device owned by your employer, via an internet café, library or other potentially not secure internet link you do so at your own risk.",
                                  style: TextStyle(
                                    color: Colors.black87,
                                    fontSize: 16,
                                    fontFamily: 'Urbanist',
                                  ),
                                  textAlign: TextAlign.justify),
                            ]),
                          )
                        ])))));
  }
}
