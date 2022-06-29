import 'package:flutter/material.dart';
import 'package:qkard/common/widgets/decoration.dart';
import 'package:qkard/common/widgets/icon_widget.dart';
import 'package:qkard/common/widgets/images_widget.dart';
import 'package:qkard/common/widgets/padding_margin.dart';
import 'package:qkard/common/widgets/text_and_styles.dart';
import 'package:qkard/utils/colors.dart';

Widget logoImage({
  required String path,
}) =>
    Images.instance.assetImage(
      name: path,
      height: 120.0,
    );

class CountryCode extends StatefulWidget {
  const CountryCode({Key? key}) : super(key: key);

  @override
  _CountryCodeState createState() => _CountryCodeState();
}

class _CountryCodeState extends State<CountryCode> {
  List<String> countries = [
    '+91',
    '+92',
    '+1',
  ];

  String selectedCountry = '';

  @override
  void initState() {
    super.initState();
    selectedCountry = countries[0];
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: paddingSymmetric(horizontal: 20.0),
      child: SizedBox(
        height: 10.0,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            DropdownButton(
              icon: Padding(
                padding: paddingAll(8.0),
                child: icons(
                  icon: Icons.keyboard_arrow_down,
                  color: dropDownIconColor,
                ),
              ),
              underline: labels(text: ''),
              value: selectedCountry,
              items: countries
                  .map(
                    (e) => DropdownMenuItem(
                  child: labels(
                    text: e.toString(),
                    fontWeight: FontWeight.bold,
                  ),
                  value: e.toString(),
                ),
              )
                  .toList(),
              onChanged: (val) {
                setState(() {
                  selectedCountry = val.toString();
                });
              },
            ),
            Padding(
              padding: paddingSymmetric(vertical: 7.0),
              child: verticalDivider(),
            ),
          ],
        ),
      ),
    );
  }
}