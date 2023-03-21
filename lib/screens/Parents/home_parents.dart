import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:proprietor_app/constants/colors.dart';
import 'package:proprietor_app/screens/Parents/NavBar.dart';
import 'package:proprietor_app/screens/Parents/screens/chats.dart';
import 'package:proprietor_app/screens/Parents/screens/events.dart';
import 'package:proprietor_app/screens/Parents/screens/home.dart';
import 'package:proprietor_app/screens/Parents/screens/settings.dart';

import 'assessment.dart';

class HomeParents extends StatefulWidget {
  const HomeParents({super.key});

  @override
  State<HomeParents> createState() => _HomeParentsState();
}

class _HomeParentsState extends State<HomeParents> {
  int index = 0;
  final screens = [
    Home(),Events(),Chats(),Settings(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[index], 
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
            indicatorColor: ConstantColors.dotUnselectColor,
            labelTextStyle: MaterialStatePropertyAll(TextStyle(
              fontSize: 16,
            ))),
        child: NavigationBar(
          backgroundColor: ConstantColors.pbgColor,
          selectedIndex: index,
          animationDuration: Duration(seconds: 3),
          onDestinationSelected: (index) => setState(
            () => this.index = index,
          ),
          destinations: [
            NavigationDestination(
                icon: Icon(Icons.home_outlined),
                selectedIcon: Icon(Icons.home),
                label: 'Home'),
            NavigationDestination(
                icon: Icon(Icons.event_outlined),
                selectedIcon: Icon(Icons.event),
                label: 'Events'),
            NavigationDestination(
                icon: Icon(Icons.chat_outlined),
                selectedIcon: Icon(Icons.chat),
                label: 'Chats'),
            NavigationDestination(
                icon: Icon(Icons.settings_outlined),
                selectedIcon: Icon(Icons.settings),
                label: 'Settings'),
          ],
        ),
      ),
    );
  }
}
