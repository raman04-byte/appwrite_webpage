import 'package:flutter/material.dart';

import '../constants/dimes.dart';

class CommonButton extends StatefulWidget {
  final String text;
  final double height;
  final double width;
  const CommonButton({super.key, required this.text,required this.height,required this.width});

  @override
  State<CommonButton> createState() => _CommonButtonState();
}

class _CommonButtonState extends State<CommonButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // height: Dimensions.scaleH(50),
      // width: Dimensions.scaleW(23),
      height: widget.height,
      width: widget.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: const Color(0xFFc7d8eb)),
      alignment: Alignment.center,
      child: Text(
        widget.text,
        style: TextStyle(
            color: const Color(0xFF171d37), fontSize: Dimensions.scaleH(15)),
      ),
    );
  }
}
