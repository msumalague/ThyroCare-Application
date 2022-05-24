import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:thyroidclass/firebase/validator.dart';
import 'package:thyroidclass/screen/components/TextFieldContainer.dart';

class InputEmail extends StatelessWidget {
  final String hintText;
  final TextStyle hintStyle;
  final IconData icon;
  final Validator validator;
  final KeyboardKey keyboardType;
  final ValueChanged<String> onChanged;
  const InputEmail({
    Key? key,
    required this.hintText,
    required this.icon,
    required this.keyboardType,
    required this.validator,
    required this.hintStyle,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onChanged,
        cursorColor: Colors.grey.shade400,
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: Colors.black45,
          ),
          hintText: hintText,
          hintStyle: hintStyle,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
