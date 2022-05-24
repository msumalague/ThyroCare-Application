import 'package:flutter/material.dart';
import 'package:thyroidclass/screen/components/TextFieldContainer.dart';

class ConfirmPassword extends StatelessWidget {
  final ValueChanged<String> onChanged;

  const ConfirmPassword({
    Key? key,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: true,
        onChanged: onChanged,
        cursorColor: Colors.grey.shade400,
        decoration: InputDecoration(
          hintText: "Confirm Password",
          hintStyle: TextStyle(
            fontSize: 14,
          ),
          icon: Icon(
            Icons.lock,
            color: Colors.black45,
          ),
          suffixIcon: Icon(
            Icons.visibility,
            color: Colors.black45,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
