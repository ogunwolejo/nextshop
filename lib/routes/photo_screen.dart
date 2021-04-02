import 'package:flutter/material.dart';
import 'package:nextshop/utils/constant.dart';

class PhotoScreen extends StatefulWidget {
  PhotoScreen({Key key}) : super(key: key);

  @override
  _PhotoScreenState createState() => _PhotoScreenState();
}

class _PhotoScreenState extends State<PhotoScreen> {
  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);
    return SafeArea(
      child: Center(
        child: Text(
          'Photo Page',
          style: _theme.textTheme.headline4
              .copyWith(color: appColors['w1'], fontWeight: FontWeight.w700),
        ),
      ),
    );
  }
}
