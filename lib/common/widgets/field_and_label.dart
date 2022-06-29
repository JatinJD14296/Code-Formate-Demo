import 'package:flutter/material.dart';
import '../../utils/colors.dart';
import 'padding_margin.dart';
import 'text_and_styles.dart';

class FieldAndLabel extends StatefulWidget {
  final Color fillColor;
  final String? labelValue;
  final int maxLine;
  final int? maxLength;
  final bool isRequire;
  final Widget? rightIcon;
  final Widget? leftIcon;
  final bool isPassword;
  final bool readOnly;
  final String hint;
  final TextStyle? hintStyle;
  final TextStyle? textStyle;
  final Function()? onTap;
  final Function(String)? onChanged;
  final TextInputType? inputType;
  final String? validationMessage;
  final TextEditingController controller;
  final BoxConstraints? constraints;
  final double borderRadius;
  final double enabledBorderRadius;
  final double focusedBorderRadius;

  const FieldAndLabel({
    Key? key,
    this.isRequire = false,
    this.readOnly = false,
    this.fillColor = white,
    this.maxLine = 1,
    this.maxLength,
    this.labelValue,
    this.onTap,
    required this.onChanged,
    this.inputType,
    this.isPassword = false,
    required this.hint,
    this.hintStyle,
    this.textStyle,
    this.rightIcon,
    this.leftIcon,
    required this.validationMessage,
    required this.controller,
    this.constraints,
    this.borderRadius = 10.0,
    this.enabledBorderRadius = 10.0,
    this.focusedBorderRadius = 10.0,
  }) : super(key: key);

  @override
  _FieldAndLabelState createState() => _FieldAndLabelState();
}

class _FieldAndLabelState extends State<FieldAndLabel> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        widget.labelValue != null ? buildLabel(context) : Container(),
        buildTextField(context),
        buildValidationMessage(context),
      ],
    );
  }

  Widget buildLabel(BuildContext context) {
    return (widget.labelValue != null && widget.labelValue!.isNotEmpty)
        ? Padding(
            padding: paddingOnly(bottom: 10.0),
            child: Row(children: <Widget>[
              labels(
                text: widget.labelValue ?? '',
                color: iconTextColor,
                size: 14,
                fontWeight: FontWeight.w400,
                textAlign: TextAlign.start,
              ),
              if (widget.isRequire)
                Text(
                  "*",
                  style: defaultTextStyle(color: primaryColor, size: 14),
                  textAlign: TextAlign.start,
                ),
            ]),
          )
        : Container();
  }

  Widget buildTextField(BuildContext context) {
    return TextFormField(
      keyboardType: widget.inputType,
      autofocus: false,
      obscureText: widget.isPassword ? visible : widget.isPassword,
      style: widget.textStyle ?? defaultTextStyle(),
      controller: widget.controller,
      onChanged: widget.onChanged!,
      readOnly: widget.readOnly,
      onTap: widget.onTap ?? () {},
      maxLength: widget.maxLength,
      cursorColor: iconTextColor,
      maxLines: widget.maxLine,
      decoration: InputDecoration(
        constraints: widget.constraints,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(widget.borderRadius),
          borderSide: const BorderSide(color: transparent),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(widget.enabledBorderRadius),
          borderSide: const BorderSide(color: transparent),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(widget.focusedBorderRadius),
          borderSide: const BorderSide(color: transparent),
        ),
        alignLabelWithHint: true,
        suffixIcon: widget.rightIcon,
        prefixIcon: widget.leftIcon,
        counterText: "",
        hintText: widget.hint,
        hintStyle: widget.hintStyle ?? const TextStyle(color: hintColor),
        filled: true,
        isDense: true,
        fillColor: widget.fillColor,
      ),
    );
  }

  bool visible = true;

  Widget buildValidationMessage(BuildContext context) {
    return buildValidationErrorMessage(context,
        validationMessage: widget.validationMessage!);
  }

  bool isBlank(String value) => value == '';

  Widget buildValidationErrorMessage(BuildContext context,
      {String validationMessage = ''}) {
    return (!isBlank(validationMessage))
        ? Padding(
            padding: paddingOnly(
              left: 20,
              top: 5.0,
            ),
            child: Row(
              children: [
                Text(
                  validationMessage,
                  style: TextStyle(
                    fontSize: 13,
                    color: widget.validationMessage == "Valid"
                        ? Colors.green
                        : red,
                  ),
                ),
              ],
            ),
          )
        : Container();
  }
}
