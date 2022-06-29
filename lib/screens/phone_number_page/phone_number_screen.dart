import 'package:flutter/material.dart';
import 'package:qkard/common/widgets/buttons.dart';
import 'package:qkard/common/widgets/field_and_label.dart';
import 'package:qkard/common/widgets/padding_margin.dart';
import 'package:qkard/common/widgets/spaces.dart';
import 'package:qkard/common/widgets/text_and_styles.dart';
import 'package:qkard/screens/phone_number_page/phone_number_screen_widget.dart';
import 'package:qkard/utils/colors.dart';
import 'package:qkard/utils/images.dart';
import 'package:qkard/utils/navigator_route.dart';
import 'package:qkard/utils/screen_utils.dart';
import 'package:qkard/utils/strings.dart';

class PhoneNumberScreen extends StatelessWidget {
  PhoneNumberScreen({Key? key}) : super(key: key);

  TextEditingController phoneNumberController = TextEditingController();
  String radioButtonValue = "";

  @override
  Widget build(BuildContext context) {
    Screen.setScreenSize(context);
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        floatingActionButton: submitButton(
          text: txtOtp.toUpperCase(),
          onTap: () {
            Navigator.pushNamed(context, otpScreen);
          },
        ),
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
                  headingText(text: txtEnterYourPhoneNumber),
                  verticalSpace(size: 5.0),
                  subHeadingText(text: txtEnterTheWorldOfQ),
                  verticalSpace(size: 40.0),
                  FieldAndLabel(
                    onChanged: (value) {},
                    hint: txtFieldHintText,
                    validationMessage: "",
                    controller: phoneNumberController,
                    hintStyle: defaultTextStyle(
                      color: hintColor,
                      size: 16.0,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 5.0,
                    ),
                    textStyle: defaultTextStyle(
                      size: 16.0,
                      letterSpacing: 5.0,
                      fontWeight: FontWeight.w700,
                    ),
                    leftIcon: const CountryCode(),
                    inputType: TextInputType.phone,
                  ),
                  verticalSpace(size: 30.0),
                  Row(
                    children: [
                      Radio(
                        value: 1,
                        groupValue: radioButtonValue,
                        onChanged: (value) {},
                      ),
                      Expanded(
                        child: Padding(
                          padding: paddingOnly(top: Screen.screenHeight * 0.02),
                          child: RichText(
                            text: TextSpan(
                              text: txtTermsAgree,
                              style: defaultTextStyle(
                                color: lightPrimaryColor,
                                size: 16.0,
                                fontWeight: FontWeight.w500,
                                letterSpacing: 1.0,
                              ),
                              children: [
                                TextSpan(
                                  text: txtTermsOfUse,
                                  style: defaultTextStyle(
                                    color: primaryBlueColor,
                                    size: 16.0,
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: 1.0,
                                  ),
                                ),
                                TextSpan(
                                  text: txtOfQKard,
                                  style: defaultTextStyle(
                                    size: 16.0,
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: 1.0,
                                    color: lightPrimaryColor,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
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
