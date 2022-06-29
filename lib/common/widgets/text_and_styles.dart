import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:qkard/utils/colors.dart';

Widget labels({
  required String text,
  Color color = iconTextColor,
  double size = 14.0,
  TextAlign textAlign = TextAlign.center,
  FontWeight fontWeight = FontWeight.normal,
  TextOverflow overflow = TextOverflow.ellipsis,
  int maxLine = 1,
  TextDecoration decoration = TextDecoration.none,
  double? letterSpacing,
  double? height,
  Paint? foreGround,
  FontStyle? fontStyle,
}) =>
    Text(
      text,
      overflow: overflow,
      maxLines: maxLine,
      textAlign: textAlign,
      style: defaultTextStyle(
        color: color,
        size: size,
        fontWeight: fontWeight,
        height: height,
        decoration: decoration,
        letterSpacing: letterSpacing,
        foreGround: foreGround,
        fontStyle: fontStyle,
      ),
    );

Widget headingText({
  required String text,
  double size = 22.0,
  FontWeight fontWeight = FontWeight.w700,
  double letterSpace = 0.5,
}) =>
    labels(
      text: text,
      size: size,
      fontWeight: fontWeight,
      letterSpacing: letterSpace,
    );

Widget subHeadingText({
  required String text,
  int maxLines = 2,
  double letterSpace = 0.5,
  Color color = lightPrimaryColor,
  double size = 15.0,
  FontWeight fontWeight = FontWeight.w700,
}) =>
    labels(
      text: text,
      maxLine: maxLines,
      letterSpacing: letterSpace,
      color: color,
      size: size,
      fontWeight: fontWeight,
    );

TextStyle defaultTextStyle({
  Color color = iconTextColor,
  double size = 14.0,
  double? height,
  double? letterSpacing,
  FontWeight fontWeight = FontWeight.normal,
  TextDecoration decoration = TextDecoration.none,
  Paint? foreGround,
  FontStyle? fontStyle,
}) =>
    TextStyle(
      color: color,
      fontSize: size,
      fontWeight: fontWeight,
      decoration: decoration,
      height: height,
      letterSpacing: letterSpacing,
      foreground: foreGround,
      fontStyle: fontStyle,
    );
