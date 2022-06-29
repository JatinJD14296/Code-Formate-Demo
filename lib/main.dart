import 'package:flutter/material.dart';
import 'package:qkard/screens/welcome_page/welcome_screen.dart';
import 'package:qkard/utils/navigator_route.dart';
import 'package:qkard/utils/screen_utils.dart';

main() {
  runApp(
    MaterialApp(
      theme: ThemeData(fontFamily: "OpenSans"),
      routes: routs,
      initialRoute: introductionScreen,
      debugShowCheckedModeBanner: false,
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Screen.setScreenSize(context);
    return const WelcomeScreen();
  }
}
