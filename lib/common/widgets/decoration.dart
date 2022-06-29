import 'package:flutter/material.dart';
import 'package:qkard/utils/colors.dart';

Decoration circularBoxDecoration({
  Color containerColor = white,
  double? circularRadius,
  double? topLeftRadius,
  double? topRightRadius,
  double? bottomLeftRadius,
  double? bottomRightRadius,
  BoxBorder? border,
  Gradient? gradient,
  DecorationImage? decorationImage,
  List<BoxShadow>? boxShadow,
  BoxShape? boxShape,
}) =>
    BoxDecoration(
      color: containerColor,
      gradient: gradient,
      image: decorationImage,
      boxShadow: boxShadow,
      shape: boxShape ?? BoxShape.rectangle,
      borderRadius: boxShape == null
          ? BorderRadius.only(
              topLeft: Radius.circular(topLeftRadius ?? circularRadius ?? 0),
              topRight: Radius.circular(topRightRadius ?? circularRadius ?? 0),
              bottomLeft:
                  Radius.circular(bottomLeftRadius ?? circularRadius ?? 0),
              bottomRight:
                  Radius.circular(bottomRightRadius ?? circularRadius ?? 0),
            )
          : null,
      border: border,
    );

RoundedRectangleBorder roundedRectangleBorder({
  required double radius,
  BorderSide? side,
}) =>
    RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(radius),
      side: side ?? const BorderSide(),
    );

Widget divider({
  required Color color,
  required double height,
  required double thickness,
}) =>
    Divider(
      color: color,
      height: height,
      thickness: thickness,
    );

Widget verticalDivider({
  Color color = primaryBlueColor,
  double width = 2.0,
  double thickness = 2.0,
}) =>
    VerticalDivider(
      color: color,
      width: width,
      thickness: thickness,
    );

Gradient welcomePageBgGradient({
  Alignment? begin,
  Alignment? end,
  Color? startColor,
  Color? endColor,
}) =>
    LinearGradient(
      colors: [
        startColor!,
        endColor!,
      ],
      begin: begin!,
      end: end!,
      stops: const [0.3, 0.8],
    );

Gradient linearGradient = const LinearGradient(
  colors: [
    gradientColorOne,
    gradientColorTwo,
    gradientColorThree,
  ],
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  stops: [0.01, 0.5, 1.0],
);
