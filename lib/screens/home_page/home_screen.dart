import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:qkard/common/widgets/decoration.dart';
import 'package:qkard/common/widgets/images_widget.dart';
import 'package:qkard/common/widgets/spaces.dart';
import 'package:qkard/screens/home_page/home_screen_widget.dart';
import 'package:qkard/screens/home_page/widget/double_section.dart';
import 'package:qkard/screens/home_page/widget/stable_appbar.dart';
import 'package:qkard/screens/home_page/widget/wallet_panel.dart';
import 'package:qkard/utils/colors.dart';
import 'package:qkard/utils/images.dart';
import 'package:qkard/utils/screen_utils.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Screen.setScreenSize(context);
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: backgroundColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              StableAppbar(),
              airDropAndBagOptionRow(),
              const HomePage(),
            ],
          ),
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Screen.setScreenSize(context);
    return Column(
      children: [
        SizedBox(
          height: 160,
          width: Screen.screenWidth,
          child: CarouselSlider.builder(
            itemCount: 15,
            itemBuilder: (
              BuildContext context,
              int itemIndex,
              int pageViewIndex,
            ) {
              return ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Container(
                  decoration: circularBoxDecoration(
                    decorationImage: DecorationImage(
                      image: Images.instance.assetImageProvider(investMoney),
                      fit: BoxFit.fill,
                    ),
                  ),

                  ///Slider Content is ready in home_screen_widget.dart file... you just need to call sliderContent(),
                ),
              );
            },
            options: CarouselOptions(
              enlargeCenterPage: true,
              viewportFraction: 0.8,
              height: 150,
              autoPlay: true,
            ),
          ),
        ),
        verticalSpace(size: 10.0),
        const WalletPanel(),
        verticalSpace(size: 10.0),
        const DoubleSection(),
        SizedBox(
          height: 160,
          width: Screen.screenWidth,
          child: CarouselSlider.builder(
            itemCount: 15,
            itemBuilder: (
              BuildContext context,
              int itemIndex,
              int pageViewIndex,
            ) {
              return ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Container(
                  decoration: circularBoxDecoration(
                    gradient: cardBoxGradient,
                  ),
                ),
              );
            },
            options: CarouselOptions(
              enlargeCenterPage: true,
              viewportFraction: 0.8,
              height: 100,
              reverse: true,
              autoPlay: true,
            ),
          ),
        ),
        verticalSpace(size: Screen.screenHeight * 0.1),
      ],
    );
  }
}
