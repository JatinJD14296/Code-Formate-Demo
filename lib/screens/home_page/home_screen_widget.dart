import 'package:flutter/material.dart';
import 'package:qkard/common/widgets/decoration.dart';
import 'package:qkard/common/widgets/images_widget.dart';
import 'package:qkard/common/widgets/padding_margin.dart';
import 'package:qkard/common/widgets/spaces.dart';
import 'package:qkard/common/widgets/text_and_styles.dart';
import 'package:qkard/utils/colors.dart';
import 'package:qkard/utils/icons.dart';
import 'package:qkard/utils/images.dart';
import 'package:qkard/utils/strings.dart';

Widget airDropAndBagOptionRow() => Padding(
      padding: paddingAll(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          nextPageButton(
            onTap: () {},
            iconName: icBag,
          ),
          Row(
            children: [
              Images.instance.assetImage(
                name: darkLogo,
                height: 25.0,
              ),
              horizontalSpace(size: 10.0),
              labels(
                text: txtUserName,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w700,
                size: 16.0,
              ),
            ],
          ),
          nextPageButton(
            onTap: () {},
            iconName: icBag,
          ),
        ],
      ),
    );

Widget nextPageButton({
  void Function()? onTap,
  String? iconName,
}) =>
    GestureDetector(
      onTap: onTap,
      child: Images.instance.assetImage(
        name: iconName!,
      ),
    );

Widget sliderContent() => Column(
      children: [
        labels(text: txtSliderHeading),
        labels(text: txtSliderDescription),
      ],
    );

Widget seeOfferButton() => Container(
      height: 30.0,
      width: 60.0,
      decoration: circularBoxDecoration(
        circularRadius: 30.0,
        containerColor: transparent,
        border: Border.all(
          color: white,
          width: 1.0,
        ),
      ),
      child: Center(
        child: labels(text: txtSeeOffer),
      ),
    );

Gradient cardBoxGradient = const LinearGradient(
      colors: [
        cardGradientColorOne,
        cardGradientColorTwo,
      ],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    );
