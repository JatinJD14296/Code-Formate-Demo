import 'package:flutter/material.dart';
import 'package:qkard/screens/loader_page/loader_screen_widget.dart';
import 'package:qkard/utils/colors.dart';
import 'package:qkard/utils/images.dart';

class LoaderScreen extends StatelessWidget {
  const LoaderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            loaderDarkLogo(logoName: darkLogo),
            gradientText,
          ],
        ),
      ),
    );
  }
}
