// ignore_for_file: import_of_legacy_library_into_null_safe

import 'package:asnani_app/utiles/localprovider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_fonts_arabic/fonts.dart';
import 'package:provider/provider.dart';

import '../model/lang.dart';
import '../style/constant.dart';

AppBar AppbarDetails(BuildContext context, String? title) {
  var englishText = translation(context).english;
  var arabicText = translation(context).arabic;
  return AppBar(
    leading: Icon(null),
    elevation: 0.0,
    centerTitle: true,
    backgroundColor: ClearColor,
    actions: [
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: PopupMenuButton<Locale>(
            icon: Icon(
              Icons.language,
              color: Colors.white,
            ),
            color: Colors.blue,
            onSelected: (Locale locale) {
              final providers =
                  Provider.of<LocaleProvider>(context, listen: false);
              providers.setLocale(locale);
            },
            itemBuilder: (context) {
              return [
                PopupMenuItem(
                  value: Locale('en'),
                  child: Center(
                    child: Text(
                      englishText,
                      style: GoogleFonts.lato(),
                    ),
                  ),
                ),
                PopupMenuItem(
                  value: Locale('ar'),
                  child: Center(
                    child: Text(
                      arabicText,
                      style: TextStyle(
                        fontFamily: ArabicFonts.Amiri,
                        package: 'google_fonts_arabic',
                        fontSize: 25.0,
                      ),
                    ),
                  ),
                )
              ];
            }),
      ),
    ],
    title: Text(title ?? ""),
  );
}
