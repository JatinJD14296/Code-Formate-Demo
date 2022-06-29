import 'package:flutter/material.dart';
import 'package:qkard/common/widgets/buttons.dart';
import 'package:qkard/common/widgets/padding_margin.dart';
import 'package:qkard/common/widgets/spaces.dart';
import 'package:qkard/common/widgets/text_and_styles.dart';
import 'package:qkard/screens/otp_page/otp_screen_widget.dart';
import 'package:qkard/screens/phone_number_page/phone_number_screen_widget.dart';
import 'package:qkard/utils/colors.dart';
import 'package:qkard/utils/images.dart';
import 'package:qkard/utils/navigator_route.dart';
import 'package:qkard/utils/strings.dart';

class OtpScreen extends StatelessWidget {
  OtpScreen({Key? key}) : super(key: key);
  TextEditingController otpController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        floatingActionButton: submitButton(
            text: txtStart,
            onTap: () {
              Navigator.pushNamed(context, dashboardPage);
            }),
        backgroundColor: backgroundColor,
        body: Padding(
          padding: paddingAll(20.0),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  logoImage(path: darkLogo),
                  verticalSpace(size: 40.0),
                  headingText(text: txtEnterOtpReceived),
                  verticalSpace(size: 5.0),
                  subHeadingText(text: txtEnterYourPhoneNumber),
                  verticalSpace(size: 40.0),
                  const OtpForm(),
                  verticalSpace(size: 30.0),
                  RichText(
                    text: TextSpan(
                      text: txtRemainingTime,
                      style: defaultTextStyle(
                        size: 16.0,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 1.0,
                        color: lightPrimaryColor,
                      ),
                      children: [
                        TextSpan(
                          text: txtRemainingTimer,
                          style: defaultTextStyle(
                            color: red,
                            size: 16.0,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 1.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  verticalSpace(size: 20.0),
                  RichText(
                    text: TextSpan(
                      text: txtNotReceivedOtp,
                      style: defaultTextStyle(
                        size: 16.0,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 1.0,
                        color: lightPrimaryColor,
                      ),
                      children: [
                        TextSpan(
                          text: txtResendNow,
                          style: defaultTextStyle(
                            color: primaryBlueColor,
                            size: 16.0,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 1.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
