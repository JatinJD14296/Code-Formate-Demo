import 'package:flutter/material.dart';
import 'package:qkard/common/widgets/images_widget.dart';
import 'package:qkard/utils/colors.dart';
import 'package:qkard/utils/strings.dart';

Widget loaderDarkLogo({String? logoName}) => Images.instance.assetImage(
      name: logoName!,
      height: 150.0,
    );

Widget gradientText = Text(
  txtQkard.toUpperCase(),
  style: TextStyle(
    fontSize: 50.0,
    fontWeight: FontWeight.bold,
    foreground: Paint()
      ..shader = const LinearGradient(
        colors: <Color>[
          gradientColorOne,
          gradientColorTwo,
          gradientColorThree,
        ],
      ).createShader(
        const Rect.fromLTWH(0.0, 0.0, 330.0, 100.0),
      ),
  ),
);
