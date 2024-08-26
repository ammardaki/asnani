// ignore_for_file: import_of_legacy_library_into_null_safe

import 'package:asnani_app/model/lang.dart';
import 'package:asnani_app/model/patients.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts_arabic/fonts.dart';

class DetailBody extends StatelessWidget {
  const DetailBody({super.key, required this.unwell, required this.index});
  final unwellP unwell;
  final int index;
  @override
  Widget build(BuildContext context) {
    var local = Localizations.localeOf(context);

    var actions = translation(context).actions;

    return SingleChildScrollView(
        child:
            Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
      Container(
        margin: const EdgeInsets.symmetric(vertical: 20 / 2),
        padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Stack(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Positioned(
                      child: Icon(
                        Icons.arrow_back,
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image(
                  image: AssetImage(
                    actions[index].image,
                  ),
                  width: 250,
                  height: 150,
                ),
              ),
              Center(
                child: Text(
                  "Personal Information\t:",
                  style: const TextStyle(
                    fontFamily: ArabicFonts.Amiri,
                    package: 'google_fonts_arabic',
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),

      // Padding(
      //   padding: const EdgeInsets.symmetric(vertical: 20 / 2),
      //   child: Center(
      //     child: Text(
      //       actions[index].name,
      //       style: const TextStyle(
      //         fontFamily: ArabicFonts.Amiri,
      //         package: 'google_fonts_arabic',
      //         fontSize: 23.0,
      //         fontWeight: FontWeight.bold,
      //         color: Colors.black,
      //       ),
      //     ),
      //   ),
      // ),

      Container(
        margin: const EdgeInsets.symmetric(vertical: 10 / 2),
        padding: const EdgeInsets.only(
          left: 20,
          right: 20,
        ),
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Text(
                actions[index].name,
                style: const TextStyle(
                  fontFamily: ArabicFonts.Rakkas,
                  package: 'google_fonts_arabic',
                  fontSize: 16.0,
                ),
              ),
            ],
          ),
        ),
      ),
      Container(
        margin: EdgeInsets.only(left: 18.5, right: 18.5),
        child: Text(
          actions[index].age,
          style: const TextStyle(
            fontFamily: ArabicFonts.Amiri,
            package: 'google_fonts_arabic',
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),

      Container(
        margin: EdgeInsets.only(left: 18.5, right: 18.5),
        child: Text(
          actions[index].gender,
          style: const TextStyle(
            fontFamily: ArabicFonts.Amiri,
            package: 'google_fonts_arabic',
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),

      Container(
        margin: const EdgeInsets.symmetric(vertical: 10 / 2),
        padding: const EdgeInsets.only(
          left: 20,
          right: 20,
        ),
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Text(
                "09295526229",
                style: const TextStyle(
                  fontFamily: ArabicFonts.Rakkas,
                  package: 'google_fonts_arabic',
                  fontSize: 16.0,
                ),
              ),
            ],
          ),
        ),
      ),
      Container(
        margin: EdgeInsets.only(left: 18.5, right: 18.5),
        child: Text(
          "example@outlook.com",
          style: const TextStyle(
            fontFamily: ArabicFonts.Amiri,
            package: 'google_fonts_arabic',
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
      Container(
        margin: const EdgeInsets.symmetric(vertical: 10 / 2),
        padding: const EdgeInsets.only(
          left: 20,
          right: 20,
        ),
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Text(
                actions[index].age,
                style: const TextStyle(
                  fontFamily: ArabicFonts.Rakkas,
                  package: 'google_fonts_arabic',
                  fontSize: 18.0,
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10 / 2),
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                ),
                child: SingleChildScrollView(
                  child: Stack(
                    children: [
                      Text(
                        actions[index].address,
                        style: const TextStyle(
                          fontFamily: ArabicFonts.Rakkas,
                          package: 'google_fonts_arabic',
                          fontSize: 16.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      Container(
        margin: const EdgeInsets.symmetric(vertical: 10 / 2),
        padding: const EdgeInsets.only(
          left: 20,
          right: 20,
        ),
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Center(
                child: Text(
                  "Medical Information\t:",
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontFamily: ArabicFonts.Amiri,
                    package: 'google_fonts_arabic',
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      Container(
        margin: const EdgeInsets.symmetric(vertical: 10 / 2),
        padding: const EdgeInsets.only(
          left: 20,
          right: 20,
        ),
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Text(
                "\tDate of last medical visit\t :\t 11/2/2021",
                style: const TextStyle(
                  fontFamily: ArabicFonts.Rakkas,
                  package: 'google_fonts_arabic',
                  fontSize: 16.0,
                ),
              ),
            ],
          ),
        ),
      ),
      Container(
        margin: const EdgeInsets.symmetric(vertical: 10 / 2),
        padding: const EdgeInsets.only(
          left: 20,
          right: 20,
        ),
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Text(
                "\tThe date of the last tooth cleaning\t:\t12/2/2021",
                style: const TextStyle(
                  fontFamily: ArabicFonts.Rakkas,
                  package: 'google_fonts_arabic',
                  fontSize: 16.0,
                ),
              ),
            ],
          ),
        ),
      ),
      Container(
        margin: const EdgeInsets.symmetric(vertical: 10 / 2),
        padding: const EdgeInsets.only(
          left: 20,
          right: 20,
        ),
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Text(
                "\tDate of last dental x-ray\t:\t15/5/2021",
                style: const TextStyle(
                  fontFamily: ArabicFonts.Rakkas,
                  package: 'google_fonts_arabic',
                  fontSize: 16.0,
                ),
              ),
            ],
          ),
        ),
      ),
      Container(
        margin: const EdgeInsets.symmetric(vertical: 10 / 2),
        padding: const EdgeInsets.only(
          left: 20,
          right: 20,
        ),
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Text(
                "\tDate of last dental treatment\t:\t18/5/2021",
                style: const TextStyle(
                  fontFamily: ArabicFonts.Rakkas,
                  package: 'google_fonts_arabic',
                  fontSize: 16.0,
                ),
              ),
            ],
          ),
        ),
      ),
      Container(
        margin: const EdgeInsets.symmetric(vertical: 10 / 2),
        padding: const EdgeInsets.only(
          left: 20,
          right: 20,
        ),
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Text(
                "\tDrugs currently used or in the past",
                style: const TextStyle(
                  fontFamily: ArabicFonts.Rakkas,
                  package: 'google_fonts_arabic',
                  fontSize: 16.0,
                ),
              ),
            ],
          ),
        ),
      ),
      Container(
        margin: const EdgeInsets.symmetric(vertical: 10 / 2),
        padding: const EdgeInsets.only(
          left: 20,
          right: 20,
        ),
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Center(
                child: Text(
                  "Additional medical information\t:",
                  style: const TextStyle(
                    fontFamily: ArabicFonts.Amiri,
                    package: 'google_fonts_arabic',
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      Container(
        margin: const EdgeInsets.symmetric(vertical: 10 / 2),
        padding: const EdgeInsets.only(
          left: 20,
          right: 20,
        ),
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Text(
                "\tHistory of previous medical conditions",
                style: const TextStyle(
                  fontFamily: ArabicFonts.Rakkas,
                  package: 'google_fonts_arabic',
                  fontSize: 16.0,
                ),
              ),
            ],
          ),
        ),
      ),
      Container(
        margin: const EdgeInsets.symmetric(vertical: 10 / 2),
        padding: const EdgeInsets.only(
          left: 20,
          right: 20,
        ),
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Text(
                "\tHistory of previous surgeries.",
                style: const TextStyle(
                  fontFamily: ArabicFonts.Rakkas,
                  package: 'google_fonts_arabic',
                  fontSize: 16.0,
                ),
              ),
            ],
          ),
        ),
      ),
      Container(
        margin: const EdgeInsets.symmetric(vertical: 10 / 2),
        padding: const EdgeInsets.only(
          left: 20,
          right: 20,
        ),
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Text(
                "\tHistory of genetic diseases or previous health problems",
                style: const TextStyle(
                  fontFamily: ArabicFonts.Rakkas,
                  package: 'google_fonts_arabic',
                  fontSize: 16.0,
                ),
              ),
            ],
          ),
        ),
      ),
    ]));
  }
}
