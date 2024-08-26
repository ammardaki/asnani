// ignore_for_file: import_of_legacy_library_into_null_safe

import 'package:asnani_app/model/lang.dart';
import 'package:asnani_app/style/constant.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts_arabic/fonts.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3)).then((value) {
      Navigator.of(context).pushReplacementNamed("login");
    });

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(translation(context).appname,style:TextStyle(
        fontFamily: ArabicFonts.Amiri,
        package: 'google_fonts_arabic',
        fontSize: 25.0,
      ),),
            Image.asset(
              'assets/images/giphy.gif',
              width: 300,
              height: 200,
              fit: BoxFit.contain,
            ),
            SizedBox(
              height: 10.0,
            ),
        
            dimecom.spaceSmall,
            CircularProgressIndicator()
          ],
        ),
      ),
    );
  }
}
