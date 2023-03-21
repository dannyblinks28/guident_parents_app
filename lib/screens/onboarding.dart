// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:proprietor_app/constants/colors.dart';
import 'package:proprietor_app/screens/parents_login.dart';
import 'package:proprietor_app/utils/screen_navigator.dart';

import '../models/content_models.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  int currentIndex = 0;
  late PageController _controller;

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: _controller,
              itemCount: contents.length,
              onPageChanged: (int index) {
                setState(() {
                  currentIndex = index;
                });
              },
              itemBuilder: (_, i) {
                return Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      const Spacer(),
                      Image.asset(
                        contents[i].image,
                        height: 300,
                      ),
                      Text(
                        contents[i].title,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        contents[i].description,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 18,
                          color: ConstantColors.textColor,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                contents.length,
                (index) => buildDot(index, context),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: ConstantColors.bgColor,
                borderRadius: BorderRadius.circular(20)),
            height: 60,
            margin: const EdgeInsets.only(top: 40, left: 40, right: 40),
            width: double.infinity,
            child: TextButton(
              onPressed: () {
                if (currentIndex == contents.length - 1) {
                  nextScreen(context, ParentsLogin());
                }
                _controller.nextPage(
                  duration: Duration(milliseconds: 100),
                  curve: Curves.bounceIn,
                );
              },
              child: Text(
                currentIndex == contents.length - 1 ? 'Get Started' : 'Next',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              nextScreen(context, ParentsLogin());
            },
            child: Text(
              currentIndex == contents.length - 1 ? '' : 'Skip',
              style: TextStyle(
                color: ConstantColors.bgColor,
                fontSize: 18,
              ),
            ),
          ),
          SizedBox(
            height: 100,
          )
        ],
      ),
    );
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 10,
      width: currentIndex == index ? 30 : 10,
      margin: EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: currentIndex == index
            ? ConstantColors.navColor
            : ConstantColors.dotUnselectColor,
      ),
    );
  }
}
