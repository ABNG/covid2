import 'package:flutter/material.dart';
import 'package:flutter_covid/app_screens/tab_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          appBarTheme: AppBarTheme(
              elevation: 1,
              color: Colors.white,
              centerTitle: true,
              iconTheme: IconThemeData(
                color: Colors.black,
              )),
          bottomAppBarColor: Colors.white,
          scaffoldBackgroundColor: Color(0xffEEF5FD)),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabScreen(),
    );
  }
}
