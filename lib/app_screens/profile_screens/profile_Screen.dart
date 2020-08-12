import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_covid/app_screens/utils/size_config.dart';
import 'package:flutter_covid/constants/const.dart';

const List<Map<String, dynamic>> title = [
  {
    "title": "My Tests",
    "icon": CupertinoIcons.news,
  },
  {
    "title": "My Address",
    "icon": CupertinoIcons.location_solid,
  },
  {
    "title": "Change Language",
    "icon": Icons.language,
  },
  {
    "title": "Help Center",
    "icon": Icons.info,
  },
  {
    "title": "Sign Out",
    "icon": Icons.power_settings_new,
  },
];

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            alignment: Alignment.center,
            height: SizeConfig.screenHeight * 0.3,
            color: color,
            child: Row(
              children: [
                Container(
                  width: 70,
                  height: 70,
                  margin: EdgeInsets.only(
                      left: SizeConfig.screenWidth * 0.1, right: 10),
                  decoration: BoxDecoration(
                      border: Border.all(width: 2, color: Colors.white),
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 8,
                          spreadRadius: 2,
                        )
                      ]),
                  child: CircleAvatar(
                    backgroundColor: Color(0xff6595BA),
                    backgroundImage: AssetImage("images/user.png"),
                  ),
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hello,",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      "Abu Bakar",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            padding: EdgeInsets.all(20),
            margin:
                EdgeInsets.symmetric(horizontal: SizeConfig.screenWidth * 0.07),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              children: List.generate(
                title.length,
                (index) => Column(
                  children: [
                    Row(
                      children: [
                        Icon(
                          title[index]['icon'],
                          color: Colors.black,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          title[index]['title'],
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    index + 1 == title.length ? SizedBox() : Divider(),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
