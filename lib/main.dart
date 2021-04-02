import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:nextshop/routes/chat_screen.dart';
import 'package:nextshop/routes/photo_screen.dart';
import 'package:nextshop/routes/profile_screen.dart';
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
      themeMode: ThemeMode.system,
      theme: ThemeData(
        backgroundColor: appColors['k2'],
        accentColor: appColors['r1'],
        /** the appbartheme configurations*/
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

        /*Text theme style */
        textTheme: TextTheme(
          headline1: TextStyle(
            color: appColors['k1'],
            fontFamily: 'Roboto-Bold',
            fontSize: 28,
            fontWeight: FontWeight.w700,
          ),
          headline2: TextStyle(
            color: appColors['k1'],
            fontFamily: 'Roboto-Bold',
            fontSize: 24,
            fontWeight: FontWeight.w700,
          ),
          headline3: TextStyle(
            color: appColors['k1'],
            fontFamily: 'Roboto-Bold',
            fontSize: 22,
            fontWeight: FontWeight.w700,
          ),
          headline4: TextStyle(
            color: appColors['k1'],
            fontFamily: 'Roboto-Bold',
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
          headline5: TextStyle(
            color: appColors['k1'],
            fontFamily: 'Roboto-Bold',
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
          bodyText1: TextStyle(
            color: appColors['k1'],
            fontFamily: 'Roboto-Medium',
            fontSize: 16,
          ),
          bodyText2: TextStyle(
            color: appColors['k1'],
            fontFamily: 'Roboto-Medium',
            fontSize: 14,
          ),
          caption: TextStyle(
            color: appColors['k1'],
            fontFamily: 'Roboto-Medium',
            fontSize: 17,
          ),
        ),
      ),
      initialRoute: '/',
      home: MainPage(),
      routes: {},
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
  final List<Widget> _pages = [ChatScreen(), PhotoScreen(), ProfileScreen()];

  int _currentIndex = 0;

  void onTap() {
    setState(() {
      _currentIndex += _currentIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        leading: Card(
          margin: EdgeInsets.only(left: 18),
          elevation: 10,
          shape: CircleBorder(
            side: BorderSide(
              color: appColors['k1'],
              width: 1,
              style: BorderStyle.solid,
            ),
          ),
          child: CircleAvatar(
            backgroundColor: appColors['w1'],
            child: Center(
              child: Text(
                'JO',
                style: Theme.of(context)
                    .textTheme
                    .caption
                    .copyWith(color: appColors['k1']),
              ),
            ),
          ),
        ),
        title: Text('Explore'),
        actions: [
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.all(10),
            child: CircularBtn(
              backgroundColor: appColors['r1'],
              iconColor: appColors['w1'],
              iconName: isApple ? CupertinoIcons.add : Icons.add,
              paddingVal: 5,
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 5,
        child: Icon(Platform.isIOS ? CupertinoIcons.add : Icons.add),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndDocked,
      bottomNavigationBar: BottomNavigation(
        onTapBottomNavitem: () {},
      ),
      drawerDragStartBehavior: DragStartBehavior.start,
      body: _pages[1],
      extendBody: true,
    );
  }
}

// creating a bottomNavigationBar
class BottomNavigation extends StatefulWidget {
  final Function onTapBottomNavitem;
  BottomNavigation({Key key, this.onTapBottomNavitem}) : super(key: key);

  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _currentIndex = 0;

  _onTapBottomNavigatorBar(int value) {
    setState(() {
      value = _currentIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final _mdq = MediaQuery.of(context);
    return Container(
      //alignment: Alignment.center,
      margin: EdgeInsets.symmetric(
        horizontal: _mdq.size.width * 0.15,
        vertical: 20,
      ),
      decoration: BoxDecoration(
        color: appColors['k4'],
        borderRadius: BorderRadius.circular(90),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: appColors['k2'],
            blurRadius: 5.0,
            spreadRadius: 0.0,
            offset: Offset(2.0, 2.0),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: _onTapBottomNavigatorBar(0),
              child: CircularBtn(
                backgroundColor: appColors['k2'],
                iconColor: appColors['r1'],
                paddingVal: 15,
                iconName: Platform.isIOS ? CupertinoIcons.home : Icons.home,
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: CircularBtn(
                backgroundColor: appColors['k2'],
                iconColor: appColors['w1'],
                paddingVal: 15,
                iconName: Platform.isIOS
                    ? CupertinoIcons.chat_bubble_2
                    : Icons.bubble_chart_rounded,
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: CircularBtn(
                backgroundColor: appColors['k2'],
                iconColor: appColors['w1'],
                paddingVal: 15,
                iconName: Platform.isIOS
                    ? CupertinoIcons.camera
                    : Icons.camera_alt_outlined,
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: CircularBtn(
                backgroundColor: appColors['k2'],
                iconColor: appColors['w1'],
                paddingVal: 15,
                iconName: Platform.isIOS
                    ? CupertinoIcons.profile_circled
                    : Icons.account_circle_outlined,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
