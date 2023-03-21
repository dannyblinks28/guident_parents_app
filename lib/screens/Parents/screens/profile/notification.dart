import 'package:flutter/material.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';
import 'package:proprietor_app/screens/Parents/profile.dart';

import '../../../../constants/colors.dart';
import '../../../../utils/screen_navigator.dart';

class Notifications extends StatefulWidget {
  const Notifications({super.key});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 200,
            decoration: const BoxDecoration(color: ConstantColors.bgColor),
            child: GestureDetector(
              onTap: () {
                nextScreenPush(
                  context,
                  const Profile(),
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(bottom: 20, left: 20),
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
                              'Notification',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      bottom: 20,
                      right: 20,
                    ),
                    child: IconButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (ctx) => AlertDialog(
                            actions: <Widget>[
                              TextButton(
                                  onPressed: () {
                                    Navigator.of(ctx).pop();
                                  },
                                  child: const Center(
                                    child: Text(
                                      'Reset All Notifications',
                                      style: TextStyle(
                                          fontSize: 18, color: Colors.black),
                                    ),
                                  )),
                            ],
                          ),
                        );
                      },
                      icon: const Icon(
                        Icons.more_vert,
                        size: 30,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    'In-app notifications',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
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
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'In-App Sounds',
                              style: TextStyle(
                                  color: Colors.grey.shade500,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            ),
                            LiteRollingSwitch(
                              width: 90,
                              value: true,
                              colorOn: ConstantColors.bgColor,
                              colorOff: Colors.grey.shade500,
                              onTap: () {},
                              onDoubleTap: () {},
                              onSwipe: () {},
                              onChanged: (bool state) {
                                print('Current State of SWITCH IS: $state');
                              },
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        Divider(
                          color: ConstantColors.dividerColor,
                          height: 5,
                          thickness: 2.0,
                        ),
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'In-App Vibrate',
                              style: TextStyle(
                                  color: Colors.grey.shade500,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            ),
                            LiteRollingSwitch(
                              width: 90,
                              value: true,
                              colorOn: ConstantColors.bgColor,
                              colorOff: Colors.grey.shade500,
                              onTap: () {},
                              onDoubleTap: () {},
                              onSwipe: () {},
                              onChanged: (bool state) {
                                print('Current State of SWITCH IS: $state');
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 40),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    'Chats notifications',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
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
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Message tone',
                              style: TextStyle(
                                  color: Colors.grey.shade500,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            ),
                            Text(
                              'Default',
                              style: TextStyle(
                                color: ConstantColors.bgColor,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        Divider(
                          color: ConstantColors.dividerColor,
                          height: 5,
                          thickness: 2.0,
                        ),
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Vibrate',
                              style: TextStyle(
                                  color: Colors.grey.shade500,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            ),
                            Text(
                              'Default',
                              style: TextStyle(
                                color: ConstantColors.bgColor,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
