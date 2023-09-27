import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants/dimes.dart';

class AppWriteImage extends StatefulWidget {
  final String imagePath;
  const AppWriteImage({super.key, required this.imagePath});

  @override
  State<AppWriteImage> createState() => _AppWriteImageState();
}

class _AppWriteImageState extends State<AppWriteImage> {
  bool isHovered = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (_) {
        setState(() {
          isHovered = true;
        });
      },
      onExit: (_) {
        setState(() {
          isHovered = false;
        });
      },
      child: Padding(
        padding: EdgeInsets.only(top: Dimensions.scaleH(15),left: Dimensions.scaleW(13)),
        child: SvgPicture.asset(
          widget.imagePath,
          fit: BoxFit.contain,
          height: Dimensions.scaleH(30),
        ),
      ),
    );
  }
}
