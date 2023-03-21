import 'package:flutter/material.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';
import 'package:proprietor_app/screens/Parents/profile.dart';

import '../../../../constants/colors.dart';
import '../../../../utils/screen_navigator.dart';

class ChatRoom extends StatefulWidget {
  const ChatRoom({super.key});

  @override
  State<ChatRoom> createState() => _ChatRoomState();
}

class _ChatRoomState extends State<ChatRoom> {
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
                          'Chat room',
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
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Enter is send',
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
                        'Dark mood',
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
                        'Chat background',
                        style: TextStyle(
                            color: Colors.grey.shade500,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                      Text(
                        'Change',
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
                        'Language',
                        style: TextStyle(
                            color: Colors.grey.shade500,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                      Text(
                        'Change',
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
                        'Font size',
                        style: TextStyle(
                            color: Colors.grey.shade500,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                      Text(
                        'Change',
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
          ),
        ],
      ),
    );
  }
}
