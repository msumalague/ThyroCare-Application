import 'package:flutter/material.dart';
import 'package:thyroidclass/screen/ForgotPassword/components/background.dart';
import 'package:thyroidclass/screen/Login/LoginScreen.dart';
import 'package:flutter/gestures.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  // bool showProgress = false;
  bool visible = false;
  final _auth = FirebaseAuth.instance;
  final _formkey = GlobalKey<FormState>();
  final TextEditingController emailController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
        child: SingleChildScrollView(
            child: Column(children: <Widget>[
      SizedBox(height: size.height * 0.35),
      Container(
          margin: EdgeInsets.fromLTRB(50, 10, 50, 10),
          padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
          child: Column(children: [
            Container(
                alignment: Alignment.center,
                margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Form(
                    key: _formkey,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Forgot Password?',
                            style: TextStyle(
                                fontFamily: 'FredokaOne',
                                fontSize: 30,
                                //fontWeight: FontWeight.bold,
                                color: Colors.white),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Enter the email address associated with your account and we’ll send an email to reset your password.',
                            style: TextStyle(
                                // fontSize: 20,
                                color: Colors.black),
                            textAlign: TextAlign.center,
                          ),
                        ]))),
            SizedBox(height: size.height * 0.07),
            TextFormField(
              controller: emailController,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.email),
                hintText: 'Email Address',
                enabled: true,
                contentPadding: EdgeInsets.only(top: 20),
                enabledBorder: UnderlineInputBorder(
                  borderSide: new BorderSide(color: Colors.white),
                ),
              ),
              textInputAction: TextInputAction.done,
              validator: (value) {
                if (value!.length == 0) {
                  return "Email cannot be empty";
                }
                if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                    .hasMatch(value)) {
                  return ("Please enter a valid email");
                } else {
                  return null;
                }
              },
              onSaved: (value) {
                // emailController.text = value!;
              },
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MaterialButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(16.0))),
                  elevation: 5.0,
                  color: Colors.white70,
                  height: MediaQuery.of(context).size.height * 0.07,
                  onPressed: () {
                    Forgotpassss(emailController.text);
                    setState(() {
                      visible = true;
                    });
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.07,
                    width: MediaQuery.of(context).size.height * 0.22,
                    alignment: Alignment.center,
                    child: Text("SEND",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.bold)),
                  ),
                )
              ],
            ),
            SizedBox(height: size.height * 0.10),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(text: "Remember your password? "),
                  TextSpan(
                    text: 'Login Now!',
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginScreen()),
                        );
                      },
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                ],
              ),
            ),
            SizedBox(height: size.height * 0.1169)
          ]))
    ])));
  }

  void Forgotpassss(String email) async {
    if (_formkey.currentState!.validate()) {
      await _auth
          .sendPasswordResetEmail(email: email)
          .then((uid) => {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => LoginScreen()))
              })
          .catchError((e) {});
    }
  }
}
