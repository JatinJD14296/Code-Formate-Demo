import 'package:flutter/material.dart';
import 'package:qkard/common/widgets/decoration.dart';
import 'package:qkard/common/widgets/icon_widget.dart';
import 'package:qkard/common/widgets/text_and_styles.dart';
import 'package:qkard/utils/colors.dart';

Widget iconButton({
  required IconData icon,
  required Function() onTap,
  Color iconColor = iconTextColor,
  double size = 24.0,
}) {
  return IconButton(
    icon: icons(
      icon: icon,
      color: iconColor,
      size: size,
    ),
    onPressed: onTap,
  );
}

Widget submitButton({
  void Function()? onTap,
  required String text,
}) =>
    GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50.0,
        width: 140.0,
        decoration: circularBoxDecoration(
          circularRadius: 50.0,
          gradient: linearGradient,
        ),
        child: Center(
          child: floatingActionButtonText(text: text),
        ),
      ),
    );

Widget floatingActionButtonText({required String text}) => labels(
      text: text,
      color: white,
      fontWeight: FontWeight.w700,
      size: 17.0,
      letterSpacing: 3.0,
    );
