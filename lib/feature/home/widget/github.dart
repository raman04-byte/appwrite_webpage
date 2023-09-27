import 'package:flutter/material.dart';
import 'package:simple_icons/simple_icons.dart';

import '../../../constants/dimes.dart';

class GitHubLogo extends StatefulWidget {
  const GitHubLogo({super.key});

  @override
  State<GitHubLogo> createState() => _GitHubLogoState();
}

class _GitHubLogoState extends State<GitHubLogo> {
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
          left: Dimensions.scaleW(6),
          top: Dimensions.scaleH(15),
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
          child: Row(
            children: [
              Icon(
                SimpleIcons.github,
                color: const Color(0xFFc7d8eb),
                size: Dimensions.scaleH(15),
              ),
              Padding(
                padding: EdgeInsets.only(left: Dimensions.scaleW(2)),
                child: Text(
                  "GitHub",
                  style: TextStyle(
                    color: const Color(0xFFc7d8eb),
                    fontSize: Dimensions.scaleH(15),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: Dimensions.scaleW(2),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF81859b),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  height: Dimensions.scaleH(22),
                  width: Dimensions.scaleW(8),
                  alignment: Alignment.center,
                  child: Text(
                    "33k",
                    style: TextStyle(
                      // color: const Color(0xFFc4cbd8),
                      color: Colors.white,
                      fontSize: Dimensions.scaleH(13),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
