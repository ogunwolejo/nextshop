import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nextshop/utils/circular_btn.dart';
import 'package:nextshop/utils/constant.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        backgroundColor: appColors['k1'],
        accentColor: appColors['r1'],
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
          centerTitle: false,
          elevation: 0,
          titleTextStyle: TextStyle(color: appColors['w1'], fontSize: 22),
          iconTheme: IconThemeData(
            color: appColors['r1'],
            opacity: 1,
            size: 22,
          ),
        ),
      ),
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  MainPage({Key key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final bool isApple = Platform.isIOS;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        leading:
            isApple ? Icon(CupertinoIcons.line_horizontal_3) : Icon(Icons.menu),
        title: Text('Chat'),
        actions: [
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(right: 20),
            child: CircularBtn(
              backgroundColor: appColors['r1'],
              iconColor: appColors['w1'],
              paddingVal: 5.0,
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(),
    );
  }
}
