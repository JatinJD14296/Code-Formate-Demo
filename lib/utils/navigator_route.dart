import 'package:flutter/material.dart';
import 'package:qkard/main.dart';
import 'package:qkard/screens/dashboard_page/dashboard_screen.dart';
import 'package:qkard/screens/home_page/home_screen.dart';
import 'package:qkard/screens/loader_page/loader_screen.dart';
import 'package:qkard/screens/otp_page/otp_screen.dart';
import 'package:qkard/screens/phone_number_page/phone_number_screen.dart';
import 'package:qkard/screens/splash_page/splash_screen.dart';
import 'package:qkard/screens/welcome_page/welcome_screen.dart';

const String rootScreen = "/";
const String introductionScreen = "IntroductionScreen";
const String welcomeScreen = "WelcomeScreen";
const String phoneNumberScreen = "PhoneNumberScreen";
const String otpScreen = "OtpScreen";
const String loaderScreen = "LoaderScreen";
const String myHomePage = "MyHomePage";
const String dashboardPage = "DashboardPage";

Map<String, WidgetBuilder> routs = {
  rootScreen: (context) => const MyApp(),
  introductionScreen: (context) => IntroductionScreen(),
  welcomeScreen: (context) => const WelcomeScreen(),
  phoneNumberScreen: (context) => PhoneNumberScreen(),
  otpScreen: (context) => OtpScreen(),
  loaderScreen: (context) => const LoaderScreen(),
  myHomePage: (context) => const MyHomePage(),
  dashboardPage: (context) => const DashboardScreen(),
};
