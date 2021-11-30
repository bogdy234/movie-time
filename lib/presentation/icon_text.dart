import 'package:flutter/material.dart';

class IconText extends StatelessWidget {
  const IconText({Key? key, this.text = '', required this.icon}) : super(key: key);

  final Icon icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        icon,
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            text,
          ),
        ),
      ],
    );
  }
}
