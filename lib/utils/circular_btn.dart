import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CircularBtn extends StatelessWidget {
  final Color backgroundColor;
  final Color iconColor;
  final double paddingVal;
  final IconData iconName;

  const CircularBtn(
      {Key key,
      this.backgroundColor,
      this.iconColor,
      this.paddingVal,
      this.iconName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 4,
      type: MaterialType.circle,
      color: backgroundColor,
      child: Padding(
        padding: EdgeInsets.all(paddingVal),
        child: Icon(
          iconName ??  Icons.add,  // if 
          color: iconColor,
          size: 20,
        ),
      ),
    );
  }
}
