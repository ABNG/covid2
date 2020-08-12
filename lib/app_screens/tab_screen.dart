import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_covid/app_screens/profile_screens/profile_Screen.dart';
import 'package:flutter_covid/app_screens/test_screens/test_screen.dart';

import 'home_screens/home_screen.dart';

class TabScreen extends StatefulWidget {
  @override
  _TabScreenState createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  int index = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (selectedIndex) {
          setState(() {
            index = selectedIndex;
          });
        },
        currentIndex: index,
        selectedItemColor: Color(0xff88A4C9),
        unselectedItemColor: Colors.black26,
        selectedFontSize: 10,
        unselectedFontSize: 10,
        iconSize: 35,
        items: [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.news),
            title: Text(
              'Tests',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.home),
            title: Text(
              'Home',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.person),
            title: Text(
              'Profile',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
      body: ShowBody(index),
    );
  }
}

class ShowBody extends StatelessWidget {
  final int index;

  ShowBody(this.index);

  @override
  Widget build(BuildContext context) {
    switch (index) {
      case 0:
        return TestScreen();
        break;
      case 1:
        return HomeScreen();
        break;
      case 2:
        return ProfileScreen();
        break;
      default:
        return null;
    }
  }
}

class ReusableContainer extends StatelessWidget {
  final String text;

  ReusableContainer(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          text,
          style: TextStyle(fontSize: 50.0),
        ),
      ),
    );
  }
}
