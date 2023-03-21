import 'package:flutter/material.dart';
import 'package:proprietor_app/screens/Parents/profile.dart';

import '../../../../constants/colors.dart';
import '../../../../utils/screen_navigator.dart';

class Privacy extends StatefulWidget {
  const Privacy({super.key});

  @override
  State<Privacy> createState() => _PrivacyState();
}

class _PrivacyState extends State<Privacy> {
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
                          'Privacy',
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
                      'assets/images/lock.png',
                      width: 30,
                      height: 30,
                    ),
                    title: const Text(
                      'Chang password',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Image.asset(
                      'assets/images/contactSchool.png',
                      width: 30,
                      height: 30,
                    ),
                    title: const Text(
                      'Contact school',
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
                      'Two step verification',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    onTap: () {},
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
