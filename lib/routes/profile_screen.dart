import 'package:flutter/material.dart';
import 'package:nextshop/utils/constant.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);
    return SafeArea(
      child: Center(
        child: Text(
          'Profile Page',
          style: _theme.textTheme.headline4
              .copyWith(color: appColors['w1'], fontWeight: FontWeight.w700),
        ),
      ),
    );
  }
}
