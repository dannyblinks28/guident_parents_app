import 'package:flutter/material.dart';
import 'package:proprietor_app/constants/colors.dart';
import 'package:proprietor_app/screens/Parents/home_parents.dart';
import 'package:proprietor_app/screens/forgot_password.dart';
import 'package:proprietor_app/utils/screen_navigator.dart';
import 'package:proprietor_app/utils/widgets/TaxiButton.dart';
import 'package:proprietor_app/utils/widgets/myTextField.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../services/auth_service.dart';
import '../view/func.dart';

class ParentsLogin extends StatefulWidget {
  const ParentsLogin({super.key});

  @override
  State<ParentsLogin> createState() => _ParentsLoginState();
}

class _ParentsLoginState extends State<ParentsLogin> {
  late final _controllerEmail = TextEditingController();
  late final _controllerPassword = TextEditingController();
  bool _isObsecure = true;
  bool _isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 30),
                Container(
                  width: 200,
                  child: const Text(
                    'Enter yout login details',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                const Text(
                  'Email/Username',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 5),
                TextFormField(
                  controller: _controllerEmail,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const  BorderSide(
                        color: ConstantColors.textFieldColor,
                        width: 1,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                        color: ConstantColors.textFieldColor,
                        width: 1,
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                        color: ConstantColors.textFieldColor,
                        width: 1,
                      ),
                    ),
                    hintText: 'e.g john doe',
                  ),
                ),
                const SizedBox(height: 30),
                const Text(
                  'Password',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 5),
                TextFormField(
                  controller: _controllerPassword,
                  obscureText: _isObsecure,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          _isObsecure = !_isObsecure;
                        });
                      },
                      icon: Icon(
                        _isObsecure ? Icons.visibility : Icons.visibility_off,
                        color: ConstantColors.textFieldColor,
                      ),
                    ),
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
                    hintText: '..............',
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Checkbox(
                      value: _isChecked,
                      onChanged: (value) {
                        _isChecked = !_isChecked;
                        setState(() {});
                      },
                    ),
                    Text('Remember me')
                  ],
                ),
                SizedBox(height: 40),
                TaxiButton(
                  title: 'Log In',
                  onPressed: () {
                    loginAccount(context);
                  },
                ),
                Column(
                  children: [
                    TextButton(
                      onPressed: () {
                        nextScreen(
                          context,
                          ForgotPassword(),
                        );
                      },
                      child: Text(
                        'Forgot Password',
                        style: TextStyle(
                          color: ConstantColors.textColor,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void loginAccount(BuildContext context) {
    int selectedIndex = 0;
    showLoadingDialog(context, 'Logging account.....');
    var authResponse =
        AuthService().login(_controllerEmail.text, _controllerPassword.text);
    authResponse.then((value) async {
      Navigator.pop(context);
      if (value.message == 'Login successfully') {
        showToast(context, value.message, false);
        await SharedPreferences.getInstance().then((v) async {
          await v.setString('parentId', value.schoolCredentials.parentId);
          await v
              .setString("token", value.schoolCredentials.token)
              .then((value) {
            nextScreenReplace(
              context,
              HomeParents(),
            );
          });
        });
      } else {
        showToast(context, value.message, true);
      }
      print(value);
    }).onError((error, stackTrace) {
      print(error.toString());
    });
  }
}
