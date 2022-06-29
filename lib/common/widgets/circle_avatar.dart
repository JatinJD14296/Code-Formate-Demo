import 'package:flutter/material.dart';
import 'package:qkard/utils/colors.dart';

Widget circleAvatar({
  String bgImage = '',
  double radius = 15.0,
  Color backGroundColor = primaryColor,
  child,
}) =>
    CircleAvatar(
      radius: radius,
      backgroundImage: AssetImage(bgImage),
      child: child,
      backgroundColor: backGroundColor,
    );
