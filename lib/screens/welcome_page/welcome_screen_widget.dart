import 'package:flutter/material.dart';
import 'package:qkard/common/widgets/decoration.dart';
import 'package:qkard/common/widgets/text_and_styles.dart';
import 'package:qkard/utils/colors.dart';
import 'package:qkard/utils/strings.dart';

Widget signInButton({void Function()? onTap}) => GestureDetector(
      onTap: onTap,
      child: Container(
        height: 70.0,
        width: 400.0,
        decoration: circularBoxDecoration(
          circularRadius: 10.0,
          containerColor: welcomePagePrimaryColor,
        ),
        child: Center(
          child: labels(
            text: txtSignIn,
            color: white,
            size: 18.0,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );

Widget createAccountButton({void Function()? onTap}) => GestureDetector(
      onTap: onTap,
      child: Container(
        height: 70.0,
        width: 400.0,
        decoration: circularBoxDecoration(
          circularRadius: 10.0,
          containerColor: transparent,
          border: Border.all(
            color: white,
            width: 2.0,
          ),
        ),
        child: Center(
          child: labels(
            text: txtCreateAnAccount,
            color: white,
            size: 18.0,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
