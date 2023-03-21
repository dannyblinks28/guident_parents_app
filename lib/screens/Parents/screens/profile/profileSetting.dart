import 'package:flutter/material.dart';
import 'package:proprietor_app/screens/parents_login.dart';

import '../../../../constants/colors.dart';
import '../../../../utils/screen_navigator.dart';
import '../../profile.dart';

class ProfileSettings extends StatelessWidget {
  const ProfileSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 200,
              decoration: const BoxDecoration(color: ConstantColors.bgColor),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20, left: 20),
                    child: IconButton(
                      onPressed: () {
                        nextScreenPush(
                          context,
                          const Profile(),
                        );
                      },
                      icon: const Icon(
                        Icons.arrow_back,
                        size: 30,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(bottom: 20),
                    child: Text(
                      'Settings',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    ListTile(
                      leading: Image.asset(
                        'assets/images/security.png',
                        width: 30,
                        height: 30,
                      ),
                      title: const Text(
                        'Security',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      onTap: () => null,
                    ),
                    ListTile(
                      leading: Image.asset(
                        'assets/images/about.png',
                        width: 30,
                        height: 30,
                      ),
                      title: const Text(
                        'About',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      onTap: () => null,
                    ),
                    ListTile(
                      leading: Image.asset(
                        'assets/images/logout.png',
                        width: 30,
                        height: 30,
                      ),
                      title: const Text(
                        'Log out',
                        style: TextStyle(
                          fontSize: 16,
                          color: ConstantColors.errorColor,
                        ),
                      ),
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (ctx) => AlertDialog(
                            content: Text('Are you sure you want to log out?'),
                            actions: <Widget>[
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  TextButton(
                                    onPressed: () {
                                      nextScreenReplace(
                                        context,
                                        const ParentsLogin(),
                                      );
                                    },
                                    child: const Center(
                                      child: const Text(
                                        'Log out',
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: ConstantColors.errorColor,
                                        ),
                                      ),
                                    ),
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      Navigator.of(ctx).pop();
                                    },
                                    child: const Center(
                                      child: const Text(
                                        'Cancel',
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: ConstantColors.bgColor,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        );
                      },
                    ),
                    ListTile(
                      leading: Image.asset(
                        'assets/images/delete.png',
                        width: 30,
                        height: 30,
                      ),
                      title: const Text(
                        'Delete account',
                        style: TextStyle(
                          fontSize: 16,
                          color: ConstantColors.errorColor,
                        ),
                      ),
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (ctx) => AlertDialog(
                            title: Text(
                              'Are you sure you want to delete your account?',
                              textAlign: TextAlign.center,
                            ),
                            content: Text(
                              'This action will clear all data and all your chats',
                              textAlign: TextAlign.center,
                            ),
                            actions: <Widget>[
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  TextButton(
                                    onPressed: () {
                                      nextScreenReplace(
                                        context,
                                        const ParentsLogin(),
                                      );
                                    },
                                    child: const Center(
                                      child: const Text(
                                        'Delete',
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: ConstantColors.errorColor,
                                        ),
                                      ),
                                    ),
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      Navigator.of(ctx).pop();
                                    },
                                    child: const Center(
                                      child: const Text(
                                        'Cancel',
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: ConstantColors.bgColor,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        );
                      },
                    ),
                    ListTile(
                      leading: Image.asset(
                        'assets/images/globe.png',
                        width: 30,
                        height: 30,
                      ),
                      title: const Text(
                        'Language',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      onTap: () => null,
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
