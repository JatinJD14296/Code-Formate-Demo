import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:qkard/common/widgets/text_and_styles.dart';
import 'package:qkard/utils/colors.dart';

class OtpForm extends StatefulWidget {
  const OtpForm({Key? key}) : super(key: key);

  @override
  State<OtpForm> createState() => _OtpFormState();
}

class _OtpFormState extends State<OtpForm> {
  FocusNode? pinSecondFocusNode;
  FocusNode? pinThirdFocusNode;
  FocusNode? pinFourthFocusNode;

  @override
  void initState() {
    super.initState();
    pinSecondFocusNode = FocusNode();
    pinThirdFocusNode = FocusNode();
    pinFourthFocusNode = FocusNode();
  }

  @override
  void dispose() {
    pinSecondFocusNode!.dispose();
    pinThirdFocusNode!.dispose();
    pinFourthFocusNode!.dispose();
    super.dispose();
  }

  void nextField({
    String? value,
    FocusNode? focusNode,
    required int field,
  }) {
    if (value!.length == 1) {
      focusNode!.requestFocus();
    }
    if (value.length == 0) {
      focusNode!.previousFocus();
    }
    if (field == 4) {
      // pinFourthFocusNode!.unfocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ///1
              SizedBox(
                width: 60.0,
                child: TextFormField(
                  autofocus: true,
                  keyboardType: TextInputType.number,
                  style: defaultTextStyle(
                    size: 20.0,
                    fontWeight: FontWeight.w700,
                  ),
                  textAlign: TextAlign.center,
                  decoration: otpInputDecoration,
                  inputFormatters: [LengthLimitingTextInputFormatter(1)],
                  onChanged: (value) {
                    nextField(
                      value: value,
                      focusNode: pinSecondFocusNode,
                      field: 1,
                    );
                  },
                ),
              ),

              ///2
              SizedBox(
                width: 60.0,
                child: TextFormField(
                  focusNode: pinSecondFocusNode,
                  keyboardType: TextInputType.number,
                  style: defaultTextStyle(
                    size: 20.0,
                    fontWeight: FontWeight.w700,
                  ),
                  textAlign: TextAlign.center,
                  decoration: otpInputDecoration,
                  inputFormatters: [LengthLimitingTextInputFormatter(1)],
                  onChanged: (value) {
                    print(value);
                    nextField(
                      focusNode: pinThirdFocusNode,
                      value: value,
                      field: 2,
                    );
                  },
                ),
              ),

              ///3
              SizedBox(
                width: 60.0,
                child: TextFormField(
                  focusNode: pinThirdFocusNode,
                  keyboardType: TextInputType.number,
                  style: defaultTextStyle(
                    size: 20.0,
                    fontWeight: FontWeight.w700,
                  ),
                  textAlign: TextAlign.center,
                  decoration: otpInputDecoration,
                  inputFormatters: [LengthLimitingTextInputFormatter(1)],
                  onChanged: (value) {
                    nextField(
                      focusNode: pinFourthFocusNode,
                      value: value,
                      field: 3,
                    );
                  },
                ),
              ),

              ///4
              SizedBox(
                width: 60.0,
                child: TextFormField(
                  focusNode: pinFourthFocusNode,
                  keyboardType: TextInputType.number,
                  style: defaultTextStyle(
                    size: 20.0,
                    fontWeight: FontWeight.w700,
                  ),
                  textAlign: TextAlign.center,
                  decoration: otpInputDecoration,
                  inputFormatters: [LengthLimitingTextInputFormatter(1)],
                  onChanged: (value) {
                    nextField(
                      focusNode: pinFourthFocusNode,
                      value: value,
                      field: 4,
                    );
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

InputDecoration otpInputDecoration = InputDecoration(
  filled: true,
  fillColor: white,
  border: const OutlineInputBorder(),
  enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(10.0),
    borderSide: BorderSide.none,
  ),
  focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(10.0),
    borderSide: const BorderSide(
      color: otpFieldBorderColor,
      width: 2.0,
    ),
  ),
);
