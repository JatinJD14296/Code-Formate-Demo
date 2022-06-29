import 'package:flutter/material.dart';
import 'package:qkard/common/widgets/images_widget.dart';
import 'package:qkard/common/widgets/padding_margin.dart';
import 'package:qkard/common/widgets/spaces.dart';
import 'package:qkard/common/widgets/text_and_styles.dart';
import 'package:qkard/utils/colors.dart';

Widget introductionContainer({
  String? introductionImage,
  String? introductionHeadingText,
  String? introductionDescriptionText,
  Function()? registrationButtonOnTap,
}) =>
    Padding(
      padding: paddingAll(20.0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(),
          Images.instance.assetImage(
            name: introductionImage!,
          ),
          // verticalSpace(size: 100.0),
          labels(
            text: introductionHeadingText!,
            color: primaryColor,
            size: 25.0,
            fontWeight: FontWeight.bold,
          ),
          verticalSpace(size: 22.0),
          labels(
            text: introductionDescriptionText!,
            maxLine: 2,
            fontWeight: FontWeight.w500,
            color: lightPrimaryColor,
            size: 17.0,
          ),
          const Spacer(),
        ],
      ),
    );
