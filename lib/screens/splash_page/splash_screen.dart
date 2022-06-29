import 'package:flutter/material.dart';
import 'package:qkard/common/widgets/buttons.dart';
import 'package:qkard/screens/splash_page/splash_screen_widget.dart';
import 'package:qkard/utils/colors.dart';
import 'package:qkard/utils/images.dart';
import 'package:qkard/utils/navigator_route.dart';
import 'package:qkard/utils/strings.dart';

class IntroductionScreen extends StatelessWidget {
  IntroductionScreen({Key? key}) : super(key: key);
  final PageController _pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      floatingActionButton: submitButton(
        text: txtNext,
        onTap: () {
          if (_pageController.page!.toInt() == 2) {
            Navigator.of(context).pushReplacementNamed(welcomeScreen);
          } else {
            _pageController.animateToPage(
              _pageController.page!.toInt() + 1,
              duration: const Duration(milliseconds: 300),
              curve: Curves.linear,
            );
          }
        },
      ),
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          // snapshot.data = index;
        },
        children: [
          ///
          introductionContainer(
            introductionHeadingText: txtSplashHeading,
            introductionDescriptionText: txtSplashDescription,
            introductionImage: qCoin,
          ),

          ///
          introductionContainer(
            introductionHeadingText: txtSplashHeading,
            introductionDescriptionText: txtSplashDescription,
            introductionImage: qCoin,
          ),

          ///
          introductionContainer(
            introductionHeadingText: txtSplashHeading,
            introductionDescriptionText: txtSplashDescription,
            introductionImage: qCoin,
          ),
        ],
      ),
    );
  }
}
/*
  Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Images.instance.assetImage(name: qCoin),
                verticalSpace(size: 40.0),
                headingText(text: txtSplashHeading),
                verticalSpace(size: 20.0),
                subHeadingText(text: txtSplashSubTitle),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Images.instance.assetImage(name: qCoin),
                verticalSpace(size: 40.0),
                headingText(text: txtSplashHeading),
                verticalSpace(size: 20.0),
                subHeadingText(text: txtSplashSubTitle),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Images.instance.assetImage(name: qCoin),
                verticalSpace(size: 40.0),
                headingText(text: txtSplashHeading),
                verticalSpace(size: 20.0),
                subHeadingText(text: txtSplashSubTitle),
              ],
            ),
 */
