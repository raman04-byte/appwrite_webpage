import 'package:appwrite_web/constants/dimes.dart';
import 'package:flutter/material.dart';

class MouseEvent extends StatefulWidget {
  final String text;
  const MouseEvent({super.key, required this.text});

  @override
  State<MouseEvent> createState() => _MouseEventState();
}

class _MouseEventState extends State<MouseEvent> {
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
        padding: EdgeInsets.only(
          left: Dimensions.scaleW(4),
          top: Dimensions.scaleH(20),
        ),
        child: Container(
          height: Dimensions.scaleH(30),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                  width: 1,
                  color: isHovered ? Colors.white : Colors.transparent),
            ),
          ),
          child: Text(
            widget.text,
            style: TextStyle(
              fontSize: Dimensions.scaleH(15),
              color: const Color(0xFFc7d8eb),
            ),
          ),
        ),
      ),
    );
  }
}
