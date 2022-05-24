import 'package:firebase_auth/firebase_auth.dart';
import 'package:thyroidclass/screen/Authentication/auth_service.dart';
import 'package:flutter/material.dart';

class Provider extends InheritedWidget {
  final AuthService auth;

  Provider({Key? key, required Widget child, required this.auth})
      : super(key: key, child: child);

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    return true;
  }

  static Provider of(BuildContext context) =>
      (context.inheritFromWidgetOfExactType(Provider) as Provider);
}
