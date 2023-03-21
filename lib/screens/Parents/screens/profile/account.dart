import 'package:flutter/material.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';
import 'package:proprietor_app/screens/Parents/profile.dart';

import '../../../../constants/colors.dart';
import '../../../../utils/screen_navigator.dart';

class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
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
                            'Account',
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
                    ListTile(
                      leading: Image.asset(
                        'assets/images/account.png',
                        width: 30,
                        height: 30,
                      ),
                      title: const Text(
                        'Add or switch Account',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      onTap: () {},
                    ),
                    ListTile(
                      leading: Image.asset(
                        'assets/images/editProfile.png',
                        width: 30,
                        height: 30,
                      ),
                      title: const Text(
                        'Edit profile',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      onTap: () {},
                    ),
                    ListTile(
                      leading: Image.asset(
                        'assets/images/changeNum.png',
                        width: 30,
                        height: 30,
                      ),
                      title: const Text(
                        'Change phone number',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      onTap: () {},
                    ),
                    ListTile(
                      leading: Image.asset(
                        'assets/images/location.png',
                        width: 30,
                        height: 30,
                      ),
                      title: const Text(
                        'Location',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      trailing: LiteRollingSwitch(
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
                      onTap: () {},
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
