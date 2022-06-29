import 'package:flutter/material.dart';
import 'package:qkard/utils/colors.dart';

Widget icons({
  required IconData icon,
  Color color = iconTextColor,
  double size = 20.0,
}) =>
    Icon(
      icon,
      color: color,
      size: size,
    );
