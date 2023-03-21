import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class TaxiButton extends StatelessWidget {
  final String title;
  final Function() onPressed;

  const TaxiButton({super.key, required this.title, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: ConstantColors.bgColor,
          borderRadius: BorderRadius.circular(20)),
      height: 60,
      width: double.infinity,
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
