// ignore_for_file: import_of_legacy_library_into_null_safe

import 'package:asnani_app/Screens/BottomScreens/deatilbody.dart';
import 'package:asnani_app/model/patients.dart';
import 'package:asnani_app/style/constant.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts_arabic/fonts.dart';

import '../../model/lang.dart';

class DetailPatient extends StatelessWidget {
  final unwellP unwell;
  final int i;
  const DetailPatient({required this.unwell, required this.i});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            // borderRadius: BorderRadius.circular(15.0),
            // border: Border.all(color: Colors.black26),
            gradient: LinearGradient(
              colors: [
                Colors.green,
                Colors.blue,
                Colors.greenAccent,
                Colors.blueAccent,
              ],
              begin: Alignment.topLeft, //begin of the gradient color
              end: Alignment.bottomRight, //end of the gradient color
            ),
          ),
        ),
        Scaffold(
          backgroundColor: ClearColor,
          // appBar: AppbarDetails(context),
          body: DetailBody(
            index: i,
            unwell: unwellP.unwellS[i],
          ),
        )
      ],
    );
  }
}

AppBar AppbarDetails(BuildContext context) {
  return AppBar(
    elevation: 0.0,
    leading: IconButton(
      padding: const EdgeInsets.only(right: 20.0),
      icon: const Icon(
        Icons.arrow_back,
        color: Colors.black,
      ),
      onPressed: () {
        Navigator.pop(context);
      },
    ),
    centerTitle: false,
    backgroundColor: Colors.black,
    title: Text(
      translation(context).back,
      style: TextStyle(package: ArabicFonts.Amiri),
    ),
  );
}
