import 'package:flutter/material.dart';
import 'package:thyroidclass/screen/components/TextFieldContainer.dart';

class RoundedInputField extends StatelessWidget {
  final String hintText;
  final TextStyle hintStyle;
  final IconData icon;
  final ValueChanged<String> onChanged;
  const RoundedInputField({
    Key? key,
    required this.hintText,
    required this.icon,
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
