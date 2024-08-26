// ignore_for_file: must_be_immutable, import_of_legacy_library_into_null_safe

import 'package:asnani_app/Component/textinput.dart';
import 'package:asnani_app/model/lang.dart';
import 'package:asnani_app/style/constant.dart';
import 'package:asnani_app/utiles/localprovider.dart';
import 'package:asnani_app/utiles/provider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_fonts_arabic/fonts.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Login extends StatelessWidget {
  final String email;
  final String pass;
  TextEditingController EmailController = TextEditingController();

  TextEditingController PassController = TextEditingController();

  bool isbac = false;
  String val = "";

   Login({super.key, required this.email, required this.pass});
  @override
  Widget build(BuildContext context) {
    var englishText = AppLocalizations.of(context)!.english;
    var arabicText = AppLocalizations.of(context)!.arabic;
    var locale = Localizations.localeOf(context);
    var local = Localizations.localeOf(context);
    return Consumer<MyProviders>(builder: (context, provider, child) {
      return Stack(children: [
        locale == Locale("en")
            ? Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        'assets/images/bglogin.png',
                      ),
                      fit: BoxFit.cover),
                ),
              )
            : Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        'assets/images/logoar.png',
                      ),
                      fit: BoxFit.cover),
                ),
              ),
        Form(
          autovalidateMode: AutovalidateMode.always,
          key: provider.formKey,
          child: Scaffold(
            appBar: AppBar(
                elevation: 0.0,
                backgroundColor: ClearColor,
                leading: Padding(
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
                )),
            backgroundColor: ClearColor,
            body: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    translation(context).appname,
                    style: locale == Locale("en")
                        ? GoogleFonts.courgette(
                            fontSize: 45.0,
                          )
                        : TextStyle(
                            fontFamily: ArabicFonts.Lalezar,
                            package: 'google_fonts_arabic',
                            fontSize: 50.0,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold),
                  ),
                  dimecom.spaceMedium,
                  TextInputSp(
                    labely: Text(
                      translation(context).email,
                      style: locale == Locale("en")
                          ? GoogleFonts.lato(fontWeight: FontWeight.bold)
                          : TextStyle(
                              fontFamily: ArabicFonts.Amiri,
                              package: 'google_fonts_arabic',
                              fontSize: 25.0,
                            ),
                    ),
                    commpadd: new EdgeInsets.all(10.0),
                    paddy: EdgeInsets.only(left: 10.0, right: 10.0),
                    controller: EmailController,
                    textInputType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.next,
                    vali: locale == Locale("en")
                        ? Provider.of<MyProviders>(context).valiemail
                        : provider.valiemailar,
                    prif: Icon(
                      Icons.email,
                    ),
                  ),
                  dimecom.spaceSmall,
                  TextInputSp(
                    controller: PassController,
                    commpadd: new EdgeInsets.all(10.0),
                    paddy: EdgeInsets.only(left: 10.0, right: 10.0),
                    mary: EdgeInsets.only(bottom: 6),
                    textInputType: TextInputType.text,
                    prif: Icon(
                      Icons.lock,
                    ),
                    obs: provider.pass,
                    sufix: IconButton(
                      icon: Icon(
                        provider.pass ? Icons.visibility_off : Icons.visibility,
                      ),
                      onPressed: () {
                        provider.ShowPass();
                      },
                    ),
                    vali: locale == Locale("en")
                        ? provider.validpass
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
                  Row(
                    children: [
                      dimecom.widthR,
                      Container(
                        alignment: Alignment.centerLeft,
                        child: MaterialButton(
                          onPressed: () =>
                              Navigator.of(context).pushNamed("forpass"),
                          padding: EdgeInsets.only(right: 0.0),
                          child: Text(
                            translation(context).forgetpassword,
                            style: local == Locale("en")
                                ? forget
                                : TextStyle(
                                    fontFamily: ArabicFonts.Amiri,
                                    package: 'google_fonts_arabic',
                                    color: kwhite,
                                    fontSize: 18.0,
                                  ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  dimecom.spaceSmall,
                  InkWell(
                    onTap: () {
                      if (provider.formKey.currentState!.validate()) {
                        
                      }
                    },
                    child: Container(
                      width: 200,
                      height: 45,
                      decoration: ContButton,
                      child: Center(
                        child: Text(
                          translation(context).signin,
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
                  dimecom.spaceBig,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        translation(context).IdontHaveAccount.toUpperCase(),
                        style: local == Locale("en")
                            ? NoAccount
                            : TextStyle(
                                fontSize: 12,
                                fontFamily: GoogleFonts.amiri().fontFamily,
                                letterSpacing: 1.7),
                        textAlign: TextAlign.center,
                      ),
                      dimecom.spacelitlle,
                      InkWell(
                        onTap: () {
                          provider.pushregy(context);
                        },
                        child: Text(
                          translation(context).signup.toUpperCase(),
                          style: local == Locale("en")
                              ? reginav
                              : TextStyle(
                                  fontSize: 12,
                                  fontFamily: GoogleFonts.amiri().fontFamily,
                                  color: Colors.green,
                                  fontWeight: FontWeight.bold,
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
                  )
                ],
              ),
            ),
          ),
        )
      ]);
    });
  }
}
