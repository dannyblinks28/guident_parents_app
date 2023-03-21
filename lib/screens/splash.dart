import 'dart:async';

import 'package:flutter/material.dart';
import 'package:proprietor_app/screens/parents_login.dart';
import 'package:proprietor_app/utils/screen_navigator.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../constants/colors.dart';
import 'Parents/home_parents.dart';
import 'onboarding.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  int() async {
    await SharedPreferences.getInstance().then((value) {
      var token = value.getString('token') ?? "";
      var isFirstTime = value.getBool('isFirstTime') ?? false;
      if (!isFirstTime) {
        nextScreenReplace(
          context,
          const Onboarding(),
        );
      } else {
        if (token == "") {
          nextScreenReplace(
            context,
            const ParentsLogin(),
          );
        } else {
          nextScreenReplace(
            context,
            const HomeParents(),
          );
        }
      }
    });
  }

  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(milliseconds: 2500),
      () {
        nextScreenReplace(
          context,
          const Onboarding(),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstantColors.bgColor,
      body: Center(
        child: Image.asset(
          'assets/images/Logo.png',
          width: MediaQuery.of(context).size.width * 0.60,
        ),
      ),
    );
  }
}
