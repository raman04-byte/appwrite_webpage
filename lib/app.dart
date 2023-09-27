import 'package:appwrite_web/routing/namesroute.dart';
import 'package:appwrite_web/routing/webrounting.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class App extends StatelessWidget {
  const App({super.key});


  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(fontFamily: GoogleFonts.poppins().fontFamily),
      getPages: WebRouting().getPages(),
      initialRoute: NamesRoutes.home,
    );
  }
}
