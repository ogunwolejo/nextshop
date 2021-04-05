import "package:flutter/material.dart";
import 'package:nextshop/utils/constant.dart';

class ChatScreen extends StatefulWidget {
  ChatScreen({Key key}) : super(key: key);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);
    return SafeArea(
      child: Center(
        child: Text(
          'Chat Page',
          style: _theme.textTheme.headline4
              .copyWith(color: appColors['w1'], fontWeight: FontWeight.w700),
        ),
      ),
    );
  }
}
