// ignore_for_file: import_of_legacy_library_into_null_safe

import 'package:asnani_app/Component/textinput.dart';
import 'package:asnani_app/model/lang.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_fonts_arabic/fonts.dart';
import 'package:provider/provider.dart';

import '../../style/constant.dart';
import '../../utiles/provider.dart';


class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    var locale = Localizations.localeOf(context);
    final provider = Provider.of<MyProviders>(context);

    return Stack(
      children: [
        locale == Locale("en")
            ? Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        'assets/images/bgForge.png',
                      ),
                      fit: BoxFit.cover),
                ),
              )
            : Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        'assets/images/forgetar.png',
                      ),
                      fit: BoxFit.cover),
                ),
              ),
        Form(
          autovalidateMode: AutovalidateMode.always,
          key: provider.obalKey,
          child: Scaffold(
            backgroundColor: ClearColor,
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 170,
                ),
                Text(
                  translation(context).forgetpassword,
                  style: locale == Locale("en")
                      ? GoogleFonts.lato(
                        fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                        )
                      : TextStyle(
                          fontFamily: ArabicFonts.Amiri,
                          package: 'google_fonts_arabic',
                          fontWeight: FontWeight.bold,
                          fontSize: 35.0,
                        ),
                ),
                SizedBox(
                  height: 14.0,
                ),
                Center(
                  child: Text(
                    translation(context).chose,
                    style: locale == Locale("en")
                        ? GoogleFonts.lato(
                            fontWeight: FontWeight.bold,
                          )
                        : TextStyle(
                            fontFamily: ArabicFonts.Amiri,
                            package: 'google_fonts_arabic',
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                          ),
                    textAlign: TextAlign.center,
                  ),
                ),
                dimecom.spaceMedium,
                TextInputSp(
                  labely: Text(
                    translation(context).email,
                    style: locale == Locale("en")
                        ? GoogleFonts.lato(
                            fontWeight: FontWeight.bold,
                          )
                        : TextStyle(
                            fontFamily: ArabicFonts.Amiri,
                            package: 'google_fonts_arabic',
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                          ),
                  ),
                  hinty: "example@domain.com",
                  commpadd: new EdgeInsets.all(10.0),
                  paddy: EdgeInsets.only(left: 10.0, right: 10.0),
                  controller: provider.restEmailController,
                  textInputType: TextInputType.emailAddress,
                  // textInputAction: TextInputAction.next,
                  vali: locale == Locale("en")
                      ? provider.valiemail
                      : provider.valiemailar,
                  prif: Icon(FontAwesomeIcons.envelope),
                ),
                dimecom.spaceMedium,
                GestureDetector(
                  onTap: () {
                    print("");
                  },
                  child: Center(
                    child: Container(
                      height: 50,
                      width: 200,
                      child: Center(
                        child: Text(
                          translation(context).rest,
                          style: locale == Locale("en")
                              ? GoogleFonts.sofia(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                )
                              : GoogleFonts.amiri(
                                  fontSize: 17.0, fontWeight: FontWeight.bold),
                        ),
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black26),
                        gradient: LinearGradient(
                            colors: [
                              Colors.green,
                              Colors.blue,
                              Colors.greenAccent,
                              Colors.blueAccent,
                              Colors.green,

                              //add more colors for gradient
                            ],
                            begin:
                                Alignment.topLeft, //begin of the gradient color
                            end: Alignment
                                .bottomRight, //end of the gradient color
                            stops: [
                              0,
                              0.2,
                              0.5,
                              0.8,
                              1.2
                            ] //stops for individual color
                            //set the stops number equal to numbers of color
                            ),
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 66.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 75,
                        height: 50,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black26),
                          gradient: LinearGradient(
                              colors: [
                                Colors.green,
                                Colors.blue,
                                Colors.greenAccent,
                                Colors.blueAccent,
                                Colors.green,
                              ],
                              begin: Alignment
                                  .topLeft, //begin of the gradient color
                              end: Alignment
                                  .bottomRight, //end of the gradient color
                              stops: [
                                0,
                                0.2,
                                0.5,
                                0.8,
                                1.2
                              ] //stops for individual color
                              //set the stops number equal to numbers of color
                              ),
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        child: MaterialButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Icon(FontAwesomeIcons.arrowLeft),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
