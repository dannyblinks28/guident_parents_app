import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../../constants/colors.dart';

class Assessment extends StatelessWidget {
  Assessment({
    required this.text,
    required this.subTitle,
    required this.progressColor,
    required this.progressScore,
    required this.progressPercentageScore,
  });
  final String text;
  final String subTitle;
  final Color progressColor;
  final String progressScore;
  final double progressPercentageScore;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: ConstantColors.pbgColor,
          boxShadow: [
            BoxShadow(
              color: ConstantColors.dotUnselectColor,
              spreadRadius: 5,
              blurRadius: 7,
            )
          ],
          border: Border.all(
            color: ConstantColors.dotUnselectColor,
          ),
          borderRadius: BorderRadius.circular(15)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                text,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                subTitle,
                style: TextStyle(
                  color: ConstantColors.subtextColor,
                  fontSize: 16,
                ),
              ),
            ],
          ),
          CircularPercentIndicator(
            radius: 30,
            lineWidth: 7,
            percent: progressPercentageScore,
            progressColor: progressColor,
            backgroundColor: ConstantColors.progregressbgColor,
            circularStrokeCap: CircularStrokeCap.round,
            center: Text(progressScore),
          )
        ],
      ),
    );
  }
}
