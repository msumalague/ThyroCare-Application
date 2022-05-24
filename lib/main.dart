// @dart=2.9
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:thyroidclass/screen/Welcome/WelcomeScreen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Thyro Care',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: WelcomeScreen(),
    );
  }
}
