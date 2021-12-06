import 'package:flutter/material.dart';

class ProfileImageText extends StatelessWidget {
  const ProfileImageText({Key? key, required this.text, required this.imageUrl, required this.onTextTap})
      : super(key: key);

  final String text;
  final String imageUrl;
  final void Function() onTextTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: Image.network(
            imageUrl,
            width: 50,
            height: 50,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 16.0,
          ),
          child: GestureDetector(
            onTap: onTextTap,
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 14,
              ),
            ),
          ),
        )
      ],
    );
  }
}
