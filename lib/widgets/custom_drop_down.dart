import 'package:flutter/material.dart';

class CustomDropDown extends StatelessWidget {
  final String content;

  const CustomDropDown({Key key, this.content}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Text(
          content,
          style: TextStyle(color: Colors.white),
        ),
        Icon(
          Icons.keyboard_arrow_down,
          color: Colors.white,
        )
      ],
    );
  }
}
