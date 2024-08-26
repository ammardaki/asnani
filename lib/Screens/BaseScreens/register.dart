// ignore_for_file: must_be_immutable, import_of_legacy_library_into_null_safe

import 'package:asnani_app/model/lang.dart';
import 'package:asnani_app/style/constant.dart';
import 'package:asnani_app/utiles/provider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_fonts_arabic/fonts.dart';
import 'package:provider/provider.dart';

import '../../Component/textinput.dart';
import '../../user/welcome_user.dart';
import 'homepage.dart';

MyProviders object = MyProviders();

class Register extends StatelessWidget {
  static final RegExp alphaExp = RegExp('[a-zA-Z]');
  TextEditingController PassController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var locale = Localizations.localeOf(context);
    return Consumer<MyProviders>(builder: (context, provider, child) {
      return Form(
          autovalidateMode: AutovalidateMode.always,
          key: provider.myGlobalKey,
          child: Container(
              child: ShaderMask(
            blendMode: BlendMode.lighten,
            shaderCallback: (bounds) {
              return LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.transparent,
                    Colors.white.withOpacity(0.1)
                  ]).createShader(bounds);
            },
            child: ShaderMask(
              shaderCallback: (bounds) {
                return LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.white,

                      // Colors.black12,
                      Colors.black,
                      // Colors.black12,
                    ]).createShader(bounds);
              },
              blendMode: BlendMode.dstIn,
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        'assets/images/bbb.png',
                      ),
                      fit: BoxFit.cover),
                ),
                child: Scaffold(
                  backgroundColor: Colors.transparent,
                  body: SingleChildScrollView(
                    child: Column(
                      children: [
                        Text(translation(context).appname,
                            style: locale == Locale("en")
                                ? GoogleFonts.allison(
                                    fontSize: 50,
                                    color: Colors.indigo,
                                    fontWeight: FontWeight.bold,
                                  )
                                : TextStyle(
                                    fontSize: 50,
                                    fontFamily:
                                        GoogleFonts.lalezar().fontFamily,
                                    color: Colors.green,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1.7)),
                        dimecom.spacelitlle,
                        TextInputSp(
                          labely: Text(
                            translation(context).name,
                            style: locale == Locale("en")
                                ? GoogleFonts.lato(
                                    fontWeight: FontWeight.bold,
                                  )
                                : TextStyle(
                                    fontFamily: ArabicFonts.Amiri,
                                    package: 'google_fonts_arabic',
                                    fontSize: 20.0,
                                  ),
                          ),
                          commpadd: new EdgeInsets.all(10.0),
                          paddy: EdgeInsets.only(left: 10.0, right: 10.0),
                          controller: provider.UserController,
                          textInputType: TextInputType.text,
                          textInputAction: TextInputAction.next,
                          vali: locale == Locale("en")
                              ? provider.userval
                              : provider.uservalar,
                          prif: Icon(
                            FontAwesomeIcons.user,
                          ),
                        ),
                        dimecom.spaceSmall,
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
                                    fontSize: 20.0,
                                  ),
                          ),
                          commpadd: new EdgeInsets.all(10.0),
                          paddy: EdgeInsets.only(left: 10.0, right: 10.0),
                          controller: provider.EmailController,
                          textInputType: TextInputType.emailAddress,
                          textInputAction: TextInputAction.next,
                          vali: locale == Locale("en")
                              ? Provider.of<MyProviders>(context).valiemail
                              : provider.valiemailar,
                          prif: Icon(
                            FontAwesomeIcons.envelope,
                          ),
                        ),
                        dimecom.spaceSmall,
                        TextInputSp(
                          controller: PassController,
                          commpadd: new EdgeInsets.all(8.0),
                          paddy: EdgeInsets.only(left: 10.0, right: 10.0),
                          mary: EdgeInsets.only(bottom: 6),
                          textInputType: TextInputType.text,
                          prif: Icon(
                            Icons.lock,
                          ),
                          obs: provider.pass,
                          sufix: IconButton(
                            icon: Icon(
                              provider.pass
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                            ),
                            onPressed: () {
                              provider.ShowPass();
                            },
                          ),
                          vali: locale == Locale("en")
                              ? Provider.of<MyProviders>(context).validpass
                              : provider.validpassar,
                          labely: Text(
                            translation(context).password,
                            style: locale == Locale("en")
                                ? GoogleFonts.lato(
                                    fontWeight: FontWeight.bold,
                                  )
                                : TextStyle(
                                    fontFamily: ArabicFonts.Amiri,
                                    package: 'google_fonts_arabic',
                                    fontSize: 20.0,
                                  ),
                          ),
                        ),
                        dimecom.spacelitlle,
                        TextInputSp(
                          controller: provider.ConfirmPass,
                          commpadd: new EdgeInsets.all(8.0),
                          paddy: EdgeInsets.only(left: 10.0, right: 10.0),
                          mary: EdgeInsets.only(bottom: 6),
                          textInputType: TextInputType.text,
                          prif: Icon(
                            Icons.lock,
                          ),
                          obs: provider.pass,
                          sufix: IconButton(
                            icon: Icon(
                              provider.pass
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                            ),
                            onPressed: () {
                              provider.ShowPass();
                            },
                          ),
                          vali: locale == Locale("en")
                              ? provider.validconpass
                              : provider.validconpassar,
                          labely: Text(
                            translation(context).confirmpassword,
                            style: locale == Locale("en")
                                ? GoogleFonts.lato(
                                    fontWeight: FontWeight.bold,
                                  )
                                : TextStyle(
                                    fontFamily: ArabicFonts.Amiri,
                                    package: 'google_fonts_arabic',
                                    fontSize: 20.0,
                                  ),
                          ),
                        ),
                        SingleChildScrollView(
                          child: Row(
                            children: [
                              SizedBox(
                                width: 100,
                              ),
                              // gender()
                            ],
                          ),
                        ),
                        dimecom.spacelitlle,
                        TextInputSp(
                          controller: provider.PhoneController,
                          commpadd: new EdgeInsets.all(8.0),
                          paddy: EdgeInsets.only(left: 10.0, right: 10.0),
                          mary: EdgeInsets.only(bottom: 6),
                          textInputType: TextInputType.text,
                          prif: Icon(Icons.phone),
                          vali: locale == Locale("en")
                              ? provider.validateMobile
                              : provider.validateMobilear,
                          labely: Text(
                            translation(context).phonenumber,
                            style: locale == Locale("en")
                                ? GoogleFonts.lato(
                                    fontWeight: FontWeight.bold,
                                  )
                                : TextStyle(
                                    fontFamily: ArabicFonts.Amiri,
                                    package: 'google_fonts_arabic',
                                    fontSize: 20.0,
                                  ),
                          ),
                        ),
                        dimecom.spacelitlle,
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20.0),
                              child: InkWell(
                                onTap: () {
                                  if (provider.myGlobalKey.currentState !=
                                          null &&
                                      provider.myGlobalKey.currentState!
                                          .validate()) {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: ((context) => HomePage(
                                            name: provider.UserController.text,
                                            email:
                                                provider.EmailController.text,
                                            phone:
                                                provider.PhoneController.text)),
                                      ),
                                    );
                                  } else {
                                    print('Form is invalid');
                                  }
                                },
                                child: Container(
                                  width: 150,
                                  height: 45,
                                  decoration: ContButton,
                                  child: Center(
                                    child: Text(
                                      translation(context).signup,
                                      style: locale == Locale("en")
                                          ? button
                                          : TextStyle(
                                              fontFamily: ArabicFonts.Amiri,
                                              package: 'google_fonts_arabic',
                                              fontSize: 20.0,
                                            ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            dimecom.spaceSmall,
                            Padding(
                              padding: const EdgeInsets.only(left: 20.0),
                              child: InkWell(
                                onTap: () {
                                  if (provider.myGlobalKey.currentState !=
                                          null &&
                                      provider.myGlobalKey.currentState!
                                          .validate()) {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: ((context) => WelcomeUser(
                                              name:
                                                  provider.UserController.text,
                                            )),
                                      ),
                                    );
                                  } else {
                                    print('Form is invalid');
                                  }
                                },
                                child: Container(
                                  width: 150,
                                  height: 45,
                                  decoration: ContButton,
                                  child: Center(
                                    child: Text(
                                      "Sign up as user",
                                      style: locale == Locale("en")
                                          ? GoogleFonts.courgette(
                                              fontSize: 18.5,
                                              fontWeight: FontWeight.bold,
                                            )
                                          : TextStyle(
                                              fontFamily: ArabicFonts.Amiri,
                                              package: 'google_fonts_arabic',
                                              fontSize: 20.0,
                                            ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        dimecom.spaceBig,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              translation(context)
                                  .AlreadyHaveAccount
                                  .toUpperCase(),
                              style: locale == Locale("en")
                                  ? Account
                                  : TextStyle(
                                      fontSize: 12,
                                      fontFamily:
                                          GoogleFonts.amiri().fontFamily,
                                      letterSpacing: 1.7),
                              textAlign: TextAlign.center,
                            ),
                            dimecom.widthR,
                            InkWell(
                              onTap: () {
                                provider.arrowloginy(context);
                              },
                              child: Text(
                                translation(context).signin.toUpperCase(),
                                style: locale == Locale("en")
                                    ? loginnav
                                    : TextStyle(
                                        fontSize: 12,
                                        fontFamily:
                                            GoogleFonts.amiri().fontFamily,
                                        letterSpacing: 1.7),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                        dimecom.space30,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () {},
                              child: CircleAvatar(
                                backgroundImage:
                                    AssetImage("assets/images/facebook.png"),
                                backgroundColor: kwhite,
                              ),
                            ),
                            dimecom.width25,
                            InkWell(
                              onTap: () {},
                              child: CircleAvatar(
                                  backgroundImage:
                                      AssetImage("assets/images/gmail.png"),
                                  backgroundColor: kwhite),
                            )
                          ],
                        ),
                        dimecom.space20,
                      ],
                    ),
                  ),
                ),
              ),
            ),
          )));
    });
  }
}
