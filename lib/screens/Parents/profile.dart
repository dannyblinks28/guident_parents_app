import 'package:flutter/material.dart';
import 'package:proprietor_app/screens/Parents/screens/home.dart';
import 'package:proprietor_app/screens/Parents/screens/profile/account.dart';
import 'package:proprietor_app/screens/Parents/screens/profile/chatRoom.dart';
import 'package:proprietor_app/screens/Parents/screens/profile/help.dart';
import 'package:proprietor_app/screens/Parents/screens/profile/notification.dart';
import 'package:proprietor_app/screens/Parents/screens/profile/privacy.dart';
import 'package:proprietor_app/screens/Parents/screens/profile/profileSetting.dart';
import 'package:proprietor_app/utils/widgets/profileUti.dart';

import '../../constants/colors.dart';
import '../../utils/screen_navigator.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () {
                          nextScreenPush(
                            context,
                            const Home(),
                          );
                        },
                        child: Image.asset('assets/images/arrowBack.png',
                            width: 50, height: 50),
                      ),
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 50,
                            child: Image.asset(
                              'assets/images/profile1.png',
                            ),
                          ),
                          SizedBox(width: 20),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Mable Olu',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                'Civil servant',
                                style: TextStyle(
                                  fontSize: 18,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    'General',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  decoration: BoxDecoration(
                    color: ConstantColors.pbgColor,
                    boxShadow: const [
                      BoxShadow(
                        color: ConstantColors.dotUnselectColor,
                        spreadRadius: 4,
                        blurRadius: 5,
                      )
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            nextScreenPush(
                              context,
                              const Account(),
                            );
                          },
                          child: ProfileUti(
                              text: 'Switch account, change phone number',
                              img: 'assets/images/account.png',
                              header: 'Account'),
                        ),
                        SizedBox(height: 20),
                        Divider(
                          color: ConstantColors.dividerColor,
                          height: 5,
                          thickness: 2.0,
                        ),
                        SizedBox(height: 20),
                        GestureDetector(
                          onTap: () {
                            nextScreenPush(
                              context,
                              const Privacy(),
                            );
                          },
                          child: ProfileUti(
                              text: 'Change and reset your password',
                              img: 'assets/images/privacy.png',
                              header: 'Privacy'),
                        ),
                        SizedBox(height: 20),
                        Divider(
                          color: ConstantColors.dividerColor,
                          height: 5,
                          thickness: 2.0,
                        ),
                        SizedBox(height: 20),
                        GestureDetector(
                          onTap: () {
                            nextScreenPush(
                              context,
                              const ChatRoom(),
                            );
                          },
                          child: ProfileUti(
                              text: 'Edit and change chat background',
                              img: 'assets/images/chats.png',
                              header: 'Chat Room'),
                        ),
                        SizedBox(height: 20),
                        Divider(
                          color: ConstantColors.dividerColor,
                          height: 5,
                          thickness: 2.0,
                        ),
                        SizedBox(height: 20),
                        GestureDetector(
                          onTap: () {
                            nextScreenPush(
                              context,
                              const Notifications(),
                            );
                          },
                          child: ProfileUti(
                              text: 'Tones, sound and ringtones',
                              img: 'assets/images/notification.png',
                              header: 'Notification'),
                        ),
                        SizedBox(height: 20),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    'General',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  decoration: BoxDecoration(
                    color: ConstantColors.pbgColor,
                    boxShadow: const [
                      BoxShadow(
                        color: ConstantColors.dotUnselectColor,
                        spreadRadius: 4,
                        blurRadius: 5,
                      )
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            nextScreenPush(
                              context,
                              const Help(),
                            );
                          },
                          child: ProfileUti(
                              text: 'Help center, contact us',
                              img: 'assets/images/help.png',
                              header: 'Help'),
                        ),
                        SizedBox(height: 20),
                        Divider(
                          color: ConstantColors.dividerColor,
                          height: 5,
                          thickness: 2.0,
                        ),
                        SizedBox(height: 20),
                        GestureDetector(
                          onTap: () {
                            nextScreenPush(
                              context,
                              const ProfileSettings(),
                            );
                          },
                          child: ProfileUti(
                              text: 'Security, delete account and log out',
                              img: 'assets/images/settings.png',
                              header: 'Settings'),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
