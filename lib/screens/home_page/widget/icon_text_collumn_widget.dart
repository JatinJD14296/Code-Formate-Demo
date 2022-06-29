import 'package:flutter/material.dart';
import 'package:qkard/common/widgets/images_widget.dart';
import 'package:qkard/common/widgets/spaces.dart';
import 'package:qkard/common/widgets/text_and_styles.dart';
import 'package:qkard/utils/colors.dart';

// String currentPage = "";
//
// class ContainerTextColumnWidget extends StatelessWidget {
//   const ContainerTextColumnWidget({
//     Key? key,
//     this.icon,
//     this.image = '',
//     this.name,
//     this.color,
//     this.gradient,
//     this.onTap,
//   }) : super(key: key);
//   final IconData? icon;
//   final String? image;
//   final String? name;
//   final Color? color;
//   final Gradient? gradient;
//   final Function()? onTap;
//
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       width: Screen.screenWidth * 0.25,
//       child: GestureDetector(
//         onTap: onTap,
//         child: Column(
//           children: [
//             Container(
//               width: Screen.screenWidth * 0.15,
//               height: Screen.screenWidth * 0.15,
//               decoration: currentPage != 'Explore'
//                   ? circularBoxDecoration(
//                       containerColor: color!.withOpacity(0.3),
//                       circularRadius: 20.0,
//                       decorationImage: (icon == null || image != '')
//                           ? DecorationImage(
//                               image: Images.instance.assetImageProvider(
//                                 image ?? '',
//                               ),
//                             )
//                           : null,
//                       boxShadow: [boxShadow],
//                       gradient: gradient,
//                       border: Border.all(width: 1, color: lightPrimaryColor),
//                     )
//                   : circularBoxDecoration(
//                       border: Border.all(width: 1, color: lightPrimaryColor),
//                       circularRadius: 15.0,
//                     ),
//               padding: paddingAll(currentPage == 'Explore' ? 3.0 : 0.0),
//               child: (image == '' && icon != null)
//                   ? icons(
//                       icon: icon!,
//                       size: 24.0,
//                       color: primaryColor,
//                     )
//                   : currentPage == 'Explore'
//                       ? Padding(
//                           padding: paddingAll(image != '' ? 5.0 : 0.0),
//                           child: Images.instance
//                               .assetImage(name: image ?? icQKoin),
//                         )
//                       : null,
//             ),
//             verticalSpace(size: 5.0),
//             if (name != null)
//               labels(
//                 text: name!,
//                 color: lightPrimaryColor,
//                 size: 14,
//                 maxLine: 2,
//               ),
//           ],
//         ),
//       ),
//     );
//   }
// }

class ContainerTextColumnWidget extends StatelessWidget {
  final String? name;
  final String? iconName;

  const ContainerTextColumnWidget({
    Key? key,
    this.name,
    this.iconName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Images.instance.assetImage(name: iconName!),
        verticalSpace(size: 10.0),
        labels(
          text: name!,
          color: hotSectionTextColor,
          fontWeight: FontWeight.w500,
          maxLine: 2,
        ),
      ],
    );
  }
}
