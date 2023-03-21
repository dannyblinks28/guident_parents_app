import 'package:flutter/material.dart';
import 'package:proprietor_app/screens/Parents/addAccount.dart';

import '../../../constants/colors.dart';
import '../../../utils/screen_navigator.dart';
import '../home_parents.dart';

class SwichAccounts extends StatelessWidget {
  const SwichAccounts({super.key});

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
                  const HomeParents(),
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: IconButton(
                          onPressed: () {
                            nextScreenPush(
                              context,
                              const HomeParents(),
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
                          'Switch Account',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
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
                                      'Remove all accounts',
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
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 40,
                          child: Image.asset('assets/images/switchImage.png'),
                        ),
                        const SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Mrs Jane Doe',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 10),
                            Text(
                              'Queen\'s college',
                              style: TextStyle(color: ConstantColors.greyColor),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: ConstantColors.switchTextColor, width: 1),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                        child: TextButton(
                          onPressed: () {
                            nextScreenReplace(
                              context,
                              const AddAccount(),
                            );
                          },
                          child: const Text(
                            'Log in',
                            style: TextStyle(
                              color: ConstantColors.switchTextColor,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 40,
                          child: Image.asset('assets/images/switchImage.png'),
                        ),
                        const SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Mrs Jane Doe',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 10),
                            Text(
                              'Junior high',
                              style: TextStyle(color: ConstantColors.greyColor),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: ConstantColors.switchTextColor, width: 1),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                        child: TextButton(
                          onPressed: () {
                            nextScreenReplace(
                              context,
                              const AddAccount(),
                            );
                          },
                          child: const Text(
                            'Log in',
                            style: TextStyle(
                              color: ConstantColors.switchTextColor,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 40,
                          child: Image.asset('assets/images/switchImage.png'),
                        ),
                        const SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Mrs Jane Doe',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 10),
                            Text(
                              'British int school',
                              style: TextStyle(color: ConstantColors.greyColor),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: ConstantColors.switchTextColor, width: 1),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                        child: TextButton(
                          onPressed: () {
                            nextScreenReplace(
                              context,
                              const AddAccount(),
                            );
                          },
                          child: const Text(
                            'Log in',
                            style: TextStyle(
                              color: ConstantColors.switchTextColor,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
