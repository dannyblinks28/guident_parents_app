import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:proprietor_app/constants/colors.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../../components/widgets.dart';
import '../../../constants/const.dart';

class Events extends StatefulWidget {
  const Events({super.key});

  @override
  State<Events> createState() => _EventsState();
}

class _EventsState extends State<Events> {
  var mode = CalendarFormat.month;
  var dateMode = "This Month";

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        buildText(
                            DateFormat.EEEE().format(DateTime.now()),
                            const Color(0xff777777),
                            textMedium,
                            FontWeight.normal,
                            TextAlign.start,
                            TextOverflow.clip),
                        buildText(
                            DateFormat('MMM, d').format(DateTime.now()),
                            const Color(0xff0A0A0A),
                            textSLarge,
                            FontWeight.normal,
                            TextAlign.start,
                            TextOverflow.clip),
                      ],
                    ),
                    const Spacer(),
                    InkWell(
                      onTap: () {
                        if (mode == CalendarFormat.month) {
                          setState(() {
                            mode = CalendarFormat.week;
                            dateMode = "This Week";
                          });
                        } else {
                          setState(() {
                            mode = CalendarFormat.month;
                            dateMode = "This Month";
                          });
                        }
                      },
                      child: Container(
                        height: 40,
                        width: 118,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color(0xfff3f3f3)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            buildText(
                                dateMode,
                                const Color(0xff333333),
                                textMedium,
                                FontWeight.normal,
                                TextAlign.start,
                                TextOverflow.clip),
                            const Icon(Icons.keyboard_arrow_down),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                TableCalendar(
                    calendarFormat: mode,
                    headerStyle: const HeaderStyle(
                      formatButtonShowsNext: false,
                    ),
                    headerVisible: false,
                    calendarStyle: const CalendarStyle(),
                    focusedDay: DateTime.now(),
                    firstDay: DateTime(2022),
                    onFormatChanged: (format) {
                      format = CalendarFormat.week;
                      setState(() {});
                      log(format.toString());
                    },
                    lastDay: DateTime(2024)),
                TabBar(
                  labelPadding: const EdgeInsets.only(bottom: 0),
                  // controller: _tabController,
                  labelColor: Colors.black,
                  labelStyle:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  unselectedLabelColor: Colors.grey,
                  indicatorWeight: 5.0,
                  indicatorColor: ConstantColors.navColor,
                  tabs: [
                    Tab(
                      child: Text(
                        'All Events',
                        style: TextStyle(),
                      ),
                    ),
                    Tab(
                      text: 'Upcoming',
                    ),
                    Tab(
                      text: 'Personal',
                    ),
                  ],
                ),
                SizedBox(height: 20),
                SizedBox(
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
                ),
                SizedBox(height: 20),
                SizedBox(
                  child: Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Jun',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text('12th'),
                        ],
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: Container(
                          // height: 88,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: ConstantColors.navColor,
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
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Democracy Day',
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
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 20),
                SizedBox(
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
                ),
                SizedBox(height: 20),
                SizedBox(
                  child: Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Jun',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text('12th'),
                        ],
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: Container(
                          // height: 88,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: ConstantColors.navColor,
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
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Democracy Day',
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
      )),
    );
  }
}
