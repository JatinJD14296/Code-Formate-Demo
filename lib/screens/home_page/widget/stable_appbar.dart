import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:qkard/common/widgets/circle_avatar.dart';
import 'package:qkard/common/widgets/field_and_label.dart';
import 'package:qkard/common/widgets/icon_widget.dart';
import 'package:qkard/common/widgets/padding_margin.dart';
import 'package:qkard/common/widgets/spaces.dart';
import 'package:qkard/utils/colors.dart';
import 'package:qkard/utils/icons.dart';
import 'package:qkard/utils/images.dart';
import 'package:qkard/utils/screen_utils.dart';
import 'package:qkard/utils/strings.dart';

class StableAppbar extends StatelessWidget {
  StableAppbar({Key? key}) : super(key: key);
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Screen.setScreenSize(context);
    return SafeArea(
      child: appBarWidget(),
    );
  }

  Widget appBarWidget() => Container(
        padding: paddingOnly(
          top: 20.0,
          left: 20.0,
          right: 20.0,
        ),
        child: Row(
          children: [
            circleAvatar(
              radius: 20.0,
              backGroundColor: red,
              child: circleAvatar(
                bgImage: darkLogo,
                radius: 18.0,
              ),
            ),
            horizontalSpace(size: 15.0),
            Expanded(
              child: FieldAndLabel(
                onChanged: (value) {},
                hint: txtSearchBarHint,
                validationMessage: "",
                controller: searchController,
                leftIcon: icons(icon: icSearch),
                borderRadius: 30.0,
                enabledBorderRadius: 30.0,
                focusedBorderRadius: 30.0,
                constraints: const BoxConstraints(maxHeight: 50.0),
              ),
            ),
            horizontalSpace(size: 15.0),
            icons(
              icon: icNotifications,
              size: 28.0,
              color: notificationIconColor,
            ),
          ],
        ),
      );
}
