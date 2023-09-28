import 'package:appwrite_web/constants/dimes.dart';
import 'package:appwrite_web/feature/home/template/navbar_template.dart';
import 'package:flutter/material.dart';

import 'appwrite_template.dart';

class HomeTemplate extends StatefulWidget {
  const HomeTemplate({super.key});

  @override
  State<HomeTemplate> createState() => _HomeTemplateState();
}

class _HomeTemplateState extends State<HomeTemplate> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [NavbarContainer(), AppwriteTemplate()],
    );
  }
}
