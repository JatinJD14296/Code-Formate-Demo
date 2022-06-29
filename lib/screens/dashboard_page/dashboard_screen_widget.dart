import 'package:flutter/material.dart';
import 'package:qkard/common/widgets/images_widget.dart';

Widget tabs(
  String icon,
  Color color,
) =>
    Images.instance.assetImage(
      name: icon,
      color: color,
      width: 24.0,
      height: 24.0,
    );
