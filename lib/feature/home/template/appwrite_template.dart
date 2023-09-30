import 'package:appwrite_web/common_widgets/button.dart';
import 'package:appwrite_web/constants/colors.dart';
import 'package:flutter/material.dart';

import '../../../constants/dimes.dart';

class AppwriteTemplate extends StatefulWidget {
  const AppwriteTemplate({super.key});

  @override
  State<AppwriteTemplate> createState() => _AppwriteTemplateState();
}

class _AppwriteTemplateState extends State<AppwriteTemplate> {
  final double _fontPadding = 68;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: Dimensions.scaleH(60),
      ),
      child: Column(
        children: [
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: Container(
              width: Dimensions.scaleW(35),
              decoration: BoxDecoration(
                color: const Color(0xFF34b86d),
                borderRadius: BorderRadius.circular(15),
              ),
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text(
                  'Appwrite 1.4 is here!',
                  style: TextStyle(
                      color: Colors.white, fontSize: Dimensions.scaleH(13)),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: Dimensions.scaleH(15)),
            child: MouseRegion(
              cursor: SystemMouseCursors.text,
              child: Text(
                "Build Fast. Scale Big. All in One Place.",
                style: TextStyle(
                  color: AppColor.fontColor,
                  fontWeight: FontWeight.bold,
                  fontSize: Dimensions.scaleH(40),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                top: Dimensions.scaleH(15),
                left: Dimensions.scaleW(_fontPadding),
                right: Dimensions.scaleW(_fontPadding)),
            child: MouseRegion(
              cursor: SystemMouseCursors.text,
              child: Text(
                "Appwrite is a backend platform for developing Web, Mobile, and Flutter applications. Built with the open source community and optimized for developer experience in the coding languages you love.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: AppColor.fontColor,
                  fontSize: Dimensions.scaleH(15),
                ),
              ),
            ),
          ),
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: Padding(
              padding: EdgeInsets.only(top: Dimensions.scaleH(30)),
              child: CommonButton(
                text: "Get Started",
                height: Dimensions.scaleH(50),
                width: Dimensions.scaleW(33),
              ),
            ),
          )
        ],
      ),
    );
  }
}
