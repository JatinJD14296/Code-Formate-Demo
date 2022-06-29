import 'package:flutter/material.dart';
import 'package:qkard/common/widgets/decoration.dart';
import 'package:qkard/common/widgets/images_widget.dart';
import 'package:qkard/common/widgets/padding_margin.dart';
import 'package:qkard/common/widgets/spaces.dart';
import 'package:qkard/common/widgets/text_and_styles.dart';
import 'package:qkard/screens/welcome_page/welcome_screen_widget.dart';
import 'package:qkard/utils/colors.dart';
import 'package:qkard/utils/images.dart';
import 'package:qkard/utils/navigator_route.dart';
import 'package:qkard/utils/strings.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: circularBoxDecoration(
        decorationImage: DecorationImage(
          image: Images.instance.assetImageProvider(welcomeBgImageWithColor),
          fit: BoxFit.cover,
        ),
        // gradient: welcomePageBgGradient(
        //   begin: Alignment.topRight,
        //   end: Alignment.bottomLeft,
        //   startColor: welcomePageSecondaryColor,
        //   endColor: welcomePagePrimaryColor,
        // ),

        ///Gradient common widget is ready in decoration.dart file.. just need to call it!
        ///Gradient common Widget name - welcomePageBgGradient();
      ),
      child: Scaffold(
        backgroundColor: transparent,
        body: Padding(
          padding: paddingAll(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              labels(
                text: txtWelcome,
                color: white,
                fontWeight: FontWeight.w700,
                size: 30.0,
                letterSpacing: 0.5,
              ),
              verticalSpace(size: 20.0),
              labels(
                text: txtWelcomeMessage,
                color: white,
                maxLine: 2,
                textAlign: TextAlign.start,
                letterSpacing: 1.0,
                size: 16.0,
                height: 1.5,
                fontWeight: FontWeight.w500,
              ),
              verticalSpace(size: 30.0),
              Align(
                alignment: Alignment.center,
                child: signInButton(onTap: () {
                  Navigator.pushNamed(context, phoneNumberScreen);
                }),
              ),
              verticalSpace(size: 20.0),
              Align(
                alignment: Alignment.center,
                child: createAccountButton(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
