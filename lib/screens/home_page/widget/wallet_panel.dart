import 'package:flutter/material.dart';
import 'package:qkard/common/widgets/decoration.dart';
import 'package:qkard/common/widgets/images_widget.dart';
import 'package:qkard/common/widgets/padding_margin.dart';
import 'package:qkard/common/widgets/spaces.dart';
import 'package:qkard/common/widgets/text_and_styles.dart';
import 'package:qkard/utils/colors.dart';
import 'package:qkard/utils/icons.dart';
import 'package:qkard/utils/screen_utils.dart';
import 'package:qkard/utils/strings.dart';

final BoxShadow boxShadow = BoxShadow(
  color: primaryColor.withOpacity(.1),
  blurRadius: 4,
  offset: const Offset(0, 2),
  spreadRadius: 5,
);

class WalletPanel extends StatelessWidget {
  const WalletPanel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: paddingOnly(left: 15.0, right: 15),
      child: Container(
        width: Screen.screenWidth * 0.85,
        height: 50,
        decoration: circularBoxDecoration(
          containerColor: backgroundColor,
          circularRadius: 30.0,
          boxShadow: [boxShadow],
          border: Border.all(width: 1, color: primaryBlueColor),
        ),
        child: Padding(
          padding: paddingSymmetric(horizontal: 10.0),
          child: Row(
            children: [
              Images.instance.assetImage(name: icEWallet),
              horizontalSpace(size: 5.0),
              labels(
                text: txtBalanceQKart,
                fontWeight: FontWeight.w600,
              ),
              const Spacer(),
              Container(
                decoration: circularBoxDecoration(
                  containerColor: primaryColor,
                  circularRadius: 30.0,
                  gradient: linearGradient,
                  boxShadow: [boxShadow],
                ),
                child: Padding(
                  padding: paddingSymmetric(vertical: 8.0, horizontal: 20.0),
                  child: labels(
                    text: txtTopUp,
                    color: backgroundColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
