import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:thyroidclass/screen/Login/LoginScreen.dart';
import 'package:thyroidclass/screen/SignUp/components/background.dart';
import 'package:flutter/gestures.dart';

class Body extends StatefulWidget {
  static const String id = 'SignUpScreen';

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  bool showProgress = false;
  bool visible = false;
  final _formkey = GlobalKey<FormState>();
  final _auth = FirebaseAuth.instance;
  CollectionReference ref = FirebaseFirestore.instance.collection('users');
  final TextEditingController passwordController = new TextEditingController();
  final TextEditingController confirmpassController =
      new TextEditingController();
  final TextEditingController name = new TextEditingController();
  final TextEditingController emailController = new TextEditingController();
  final TextEditingController mobile = new TextEditingController();
  bool _isObscure = true;
  bool _isObscure2 = true;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Background(
        child: SingleChildScrollView(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: <
                    Widget>[
      Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Center(
              child: Container(
                  margin: EdgeInsets.all(40),
                  child: Form(
                      key: _formkey,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(height: size.height * 0.20),
                            TextFormField(
                              controller: emailController,
                              decoration: InputDecoration(
                                prefixIcon: Icon(Icons.email),
                                hintText: 'Email Address',
                                enabled: true,
                                contentPadding: EdgeInsets.only(top: 20),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide:
                                      new BorderSide(color: Colors.white),
                                ),
                              ),
                              validator: (value) {
                                if (value!.length == 0) {
                                  return "Email cannot be empty";
                                }
                                if (!RegExp(
                                        "^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                                    .hasMatch(value)) {
                                  return ("Please enter a valid email");
                                } else {
                                  return null;
                                }
                              },
                              onChanged: (value) {},
                              keyboardType: TextInputType.emailAddress,
                            ),
                            TextFormField(
                              obscureText: _isObscure,
                              controller: passwordController,
                              decoration: InputDecoration(
                                prefixIcon: Icon(Icons.lock),
                                suffixIcon: IconButton(
                                    icon: Icon(_isObscure
                                        ? Icons.visibility_off
                                        : Icons.visibility),
                                    onPressed: () {
                                      setState(() {
                                        _isObscure = !_isObscure;
                                      });
                                    }),
                                hintText: 'Password',
                                enabled: true,
                                contentPadding: EdgeInsets.only(top: 20),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide:
                                      new BorderSide(color: Colors.white),
                                ),
                              ),
                              validator: (value) {
                                RegExp regex = new RegExp(r'^.{6,}$');
                                if (value!.isEmpty) {
                                  return "Password cannot be empty";
                                }
                                if (!regex.hasMatch(value)) {
                                  return ("please enter valid password min. 6 character");
                                } else {
                                  return null;
                                }
                              },
                              onChanged: (value) {},
                            ),
                            TextFormField(
                              obscureText: _isObscure2,
                              controller: confirmpassController,
                              decoration: InputDecoration(
                                prefixIcon: Icon(Icons.lock),
                                suffixIcon: IconButton(
                                    icon: Icon(_isObscure2
                                        ? Icons.visibility_off
                                        : Icons.visibility),
                                    onPressed: () {
                                      setState(() {
                                        _isObscure2 = !_isObscure2;
                                      });
                                    }),
                                hintText: 'Confirm Password',
                                enabled: true,
                                contentPadding: EdgeInsets.only(top: 20),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide:
                                      new BorderSide(color: Colors.white),
                                ),
                              ),
                              validator: (value) {
                                if (confirmpassController.text !=
                                    passwordController.text) {
                                  return "Password did not match";
                                } else {
                                  return null;
                                }
                              },
                              onChanged: (value) {},
                            ),
                            SizedBox(height: size.height * 0.15),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                MaterialButton(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(16.0))),
                                  elevation: 5.0,
                                  color: Colors.white70,
                                  height:
                                      MediaQuery.of(context).size.height * 0.07,
                                  onPressed: () {
                                    setState(() {
                                      showProgress = true;
                                    });
                                    signUp(
                                      emailController.text,
                                      passwordController.text,
                                    );
                                  },
                                  child: Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.07,
                                    width: MediaQuery.of(context).size.height *
                                        0.22,
                                    alignment: Alignment.center,
                                    child: Text("REGISTER",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: size.height * 0.10),
                            Container(
                                margin: EdgeInsets.fromLTRB(10, 0, 10, 70),
                                child: Text.rich(TextSpan(children: [
                                  TextSpan(text: "Already have an account? "),
                                  TextSpan(
                                    text: 'Login Now!',
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    LoginScreen()));
                                      },
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ]))),
                          ])))))
    ])));
  }

  signUp(String email, String password) async {
    if (_formkey.currentState!.validate()) {
      try {
        UserCredential userCredential = await FirebaseAuth.instance
            .createUserWithEmailAndPassword(
              email: email,
              password: password,
            )
            .whenComplete(() => {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (_) => LoginScreen(),
                    ),
                  )
                });
      } on FirebaseAuthException catch (e) {
        if (e.code == 'weak-password') {
          print('The password provided is too weak.');
        } else if (e.code == 'email-already-in-use') {
          print('The account already exists for that email.');
        }
      } catch (e) {
        print(e);
      }
    }

    CircularProgressIndicator();
  }
}
