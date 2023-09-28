import 'package:appwrite_web/common_widgets/button.dart';
import 'package:flutter/material.dart';

import '../../../constants/assets.dart';
import '../../../constants/dimes.dart';
import '../widget/appwrite_image.dart';
import '../widget/github.dart';
import '../widget/mouse_widget.dart';
import '../widget/switch.dart';

class NavbarContainer extends StatefulWidget {
  const NavbarContainer({super.key});

  @override
  State<NavbarContainer> createState() => _NavbarContainerState();
}

class _NavbarContainerState extends State<NavbarContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: Dimensions.scaleH(100),
      color: const Color(0xFF171d37),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: Dimensions.scaleW(12),
          vertical: Dimensions.scaleH(20),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const AppWriteImage(
                  imagePath: Assets.image1,
                ),
                Padding(
                  padding: EdgeInsets.only(left: Dimensions.scaleW(7)),
                  child: const Row(
                    children: [
                      MouseEvent(text: "Docs"),
                      MouseEvent(text: "Community"),
                      MouseEvent(text: "Pricing"),
                      GitHubLogo()
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                const ToogleSwitch(),
                MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: Dimensions.scaleW(10),
                      right: Dimensions.scaleH(10),
                    ),
                    child: Text(
                      "Sign In",
                      style: TextStyle(
                          color: const Color(0xFFc4d8eb),
                          fontSize: Dimensions.scaleH(15)),
                    ),
                  ),
                ),
                MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: Padding(
                    padding: EdgeInsets.only(
                      right: Dimensions.scaleW(15),
                    ),
                    child: CommonButton(
                      text: "Sign Up",
                      height: Dimensions.scaleH(50),
                      width: Dimensions.scaleW(23),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
