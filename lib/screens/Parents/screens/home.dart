import 'package:flutter/material.dart';

import '../../../constants/colors.dart';
import '../NavBar.dart';
import '../assessment.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavBar(),
      appBar: AppBar(
        backgroundColor: ConstantColors.pbgColor,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        actions: [
          Row(
            children: [
              Image.asset(
                'assets/images/notification.png',
                width: 30,
                height: 30,
              ),
              const SizedBox(width: 20),
              Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: CircleAvatar(
                  child: Image.asset('assets/images/profile1.png'),
                ),
              ),
            ],
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          color: ConstantColors.pbgColor,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      child: Image.asset(
                        'assets/images/profileone.png',
                      ),
                    ),
                    SizedBox(width: 20),
                    CircleAvatar(
                      child: Image.asset(
                        'assets/images/profile2.png',
                      ),
                    ),
                    SizedBox(width: 20),
                    CircleAvatar(
                      child: Image.asset(
                        'assets/images/profile3.png',
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Container(
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        ConstantColors.linerOneColor,
                        ConstantColors.linerTwoColor,
                      ],
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Text(
                                'View your child\'s '
                                ' latest result here',
                                style: TextStyle(
                                    fontSize: 18,
                                    color: ConstantColors.pbgColor),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Image.asset(
                                'assets/images/latestResult.png',
                                width: 80,
                              ),
                            )
                          ],
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: ConstantColors.textFieldColor),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 15),
                            child: Text(
                              'View Result',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: ConstantColors.textFieldColor),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Mabel\s Academic Assessment',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'See more',
                        style: TextStyle(color: ConstantColors.navColor),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 20),
                Assessment(
                  progressColor: ConstantColors.hundredColor,
                  progressScore: '100%',
                  subTitle: 'Continuous Assessment',
                  text: 'Mathematics',
                  progressPercentageScore: 1.0,
                ),
                const SizedBox(height: 20),
                Assessment(
                  progressColor: ConstantColors.twentyFiveColor,
                  progressScore: '25%',
                  subTitle: 'Examination',
                  text: 'English Language',
                  progressPercentageScore: 0.25,
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Mabel\s Behaviourial Assessment',
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'See more',
                        style: TextStyle(color: ConstantColors.navColor),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 20),
                Assessment(
                  progressColor: ConstantColors.eightyColor,
                  progressScore: '80%',
                  subTitle: 'An assessment on how punctual...',
                  text: 'Puntuality',
                  progressPercentageScore: 0.80,
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Mabel\s Behaviourial Assessment',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                SizedBox(
                  // height: 88,
                  child: Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'May',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text('27th'),
                        ],
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: Container(
                          // height: 88,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: ConstantColors.bgColor,
                              boxShadow: [
                                BoxShadow(
                                  offset: const Offset(0, 4),
                                  blurRadius: 16,
                                  color:
                                      const Color(0xff969696).withOpacity(0.15),
                                  spreadRadius: -2,
                                )
                              ]),
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 22),
                            margin: const EdgeInsets.only(left: 10),
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(10),
                                  bottomRight: Radius.circular(10),
                                )),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'PTA Meeting',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                        Icons.more_horiz,
                                        color: ConstantColors.subtextColor,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Image.asset(
                                      'assets/images/time.png',
                                      width: 25,
                                      height: 25,
                                    ),
                                    Text(
                                      '10am - 11am',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 5),
                                Row(
                                  children: [
                                    Image.asset(
                                      'assets/images/location.png',
                                      width: 25,
                                      height: 25,
                                    ),
                                    Text(
                                      'School Premises',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 5),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
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
