import 'package:flutter/material.dart';
import 'package:qkard/common/widgets/padding_margin.dart';
import 'package:qkard/network/data.dart';
import 'package:qkard/screens/home_page/widget/icon_text_collumn_widget.dart';

class DoubleSection extends StatelessWidget {
  const DoubleSection({
    Key? key,
    this.moreText,
    this.text,
    this.color,
  }) : super(key: key);

  final String? text;
  final String? moreText;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: paddingSymmetric(horizontal: 10.0),
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          childAspectRatio: 0.88,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: hotMenu.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return ContainerTextColumnWidget(
            name: hotMenu[index]["text"],
            iconName: hotMenu[index]["icon"],
          );
        },
      ),
    );
  }
}
