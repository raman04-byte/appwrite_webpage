import 'package:appwrite_web/constants/dimes.dart';
import 'package:flutter/material.dart';

import 'package:flutter_switch/flutter_switch.dart';

class ToogleSwitch extends StatefulWidget {
  const ToogleSwitch({super.key});

  @override
  State<ToogleSwitch> createState() => _ToogleSwitchState();
}

class _ToogleSwitchState extends State<ToogleSwitch> {
  bool state = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: FlutterSwitch(
        height: Dimensions.scaleH(24),
        width: Dimensions.scaleW(11),
        value: state,
        padding: 2.0,
        activeToggleColor: Colors.white,
        inactiveToggleColor: const Color(0xFF2F363D),
        activeColor: const Color(0xFFe2e2e2),
        inactiveColor: const Color(0xFFc7d8eb),
        activeIcon: const Icon(
          Icons.wb_sunny,
          color: Color(0xFF8f8f8f),
        ),
        inactiveIcon: Transform.rotate(
          angle: 200,
          child: const Icon(
            Icons.nightlight_round,
            color: Color(0xFFbec3e0),
          ),
        ),
        onToggle: (val) {
          setState(() {
            state = val;
          });
        },
      ),
    );
  }
}
