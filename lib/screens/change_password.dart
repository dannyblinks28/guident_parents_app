import 'package:flutter/material.dart';
import 'package:proprietor_app/constants/colors.dart';
import 'package:proprietor_app/screens/forgot_password.dart';
import 'package:proprietor_app/screens/parents_login.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../services/auth_service.dart';
import '../utils/screen_navigator.dart';
import '../utils/widgets/TaxiButton.dart';
import '../view/func.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({super.key});

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  late final _passwordController = TextEditingController();
  late final _reEnterpasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 200,
              decoration: BoxDecoration(color: ConstantColors.bgColor),
              child: GestureDetector(
                onTap: () {
                  nextScreenPush(
                    context,
                    ForgotPassword(),
                  );
                },
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: IconButton(
                        onPressed: () {
                          onPressed:
                          () {
                            nextScreenPush(
                              context,
                              ForgotPassword(),
                            );
                          };
                        },
                        icon: Icon(
                          Icons.arrow_back,
                          size: 30,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Text(
                        'Change password',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10),
                  Text(
                    'Your password be less more six characters and it must contain letters and one special number  ',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    "e.g @\$!",
                    style: TextStyle(
                      fontSize: 16,
                      color: ConstantColors.errorColor,
                    ),
                  ),
                  SizedBox(height: 40),
                  Text(
                    'New password',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 10),
                  TextFormField(
                    controller: _passwordController,
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
                  SizedBox(height: 20),
                  Text(
                    'Re-enter password',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 10),
                  TextFormField(
                    controller: _reEnterpasswordController,
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
                    title: 'Change',
                    onPressed: () {
                      loginAccount(context);
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  void loginAccount(BuildContext context) {
    showLoadingDialog(context, 'Logging account.....');
    var authResponse =
        AuthService().login(_passwordController.text, _passwordController.text);
    authResponse
        .then((value) async => {
              Navigator.pop(context),
              if (value.message == "Login successfully")
                {
                  await SharedPreferences.getInstance().then((v) async {
                    await v.setString(
                        'parentId', value.schoolCredentials.parentId);
                    await v
                        .setString("token", value.schoolCredentials.token)
                        .then((value) {
                      nextScreenReplace(
                        context,
                        const ParentsLogin(),
                      );
                    });
                  })
                }
              else
                {showToast(context, value.message, true)}
            })
        .onError((error, stackTrace) => {print(error.toString())});
  }
}
