import 'package:flutter/material.dart';

class ProfileUti extends StatelessWidget {
  final String img;
  final String header;
  final String text;
  const ProfileUti(
      {super.key, required this.text, required this.img, required this.header});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          img,
          width: 30,
          height: 30,
        ),
        SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              header,
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            Text(
              text,
              style: TextStyle(
                fontSize: 15,
              ),
            ),
          ],
        )
      ],
    );
  }
}
