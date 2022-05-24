import 'package:flutter/material.dart';

class TextFieldContainer extends StatelessWidget {
  final Widget child;
  const TextFieldContainer({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(left: 60, right: 60),
      padding: EdgeInsets.symmetric(horizontal: 20),
      width: size.width * 0.8,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.grey.shade200),
        ),
      ),
      child: child,
    );
  }
}
