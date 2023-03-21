import 'package:flutter/material.dart';
import 'package:proprietor_app/screens/change_password.dart';
import 'package:proprietor_app/screens/parents_login.dart';
import 'package:proprietor_app/utils/screen_navigator.dart';
import 'package:proprietor_app/utils/widgets/TaxiButton.dart';

import '../constants/colors.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  late final _emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 60),
              IconButton(
                onPressed: () {
                  nextScreenPush(
                    context,
                    ParentsLogin(),
                  );
                },
                icon: Icon(
                  Icons.arrow_back,
                  size: 30,
                ),
              ),
              SizedBox(height: 15),
              Text(
                'Forgot Password?',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Please enter your email address or phone number you will recieve an OTP sms or link to create a new password',
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              SizedBox(height: 30),
              Text(
                'Enter your email',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 10),
              TextFormField(
                controller: _emailController,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: ConstantColors.textFieldColor,
                      width: 1,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: ConstantColors.textFieldColor,
                      width: 1,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: ConstantColors.textFieldColor,
                      width: 1,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 70),
              TaxiButton(
                title: 'Send',
                onPressed: () {
                  nextScreenPush(
                    context,
                    ChangePassword(),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
