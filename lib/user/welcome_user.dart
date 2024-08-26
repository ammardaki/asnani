import 'package:asnani_app/style/constant.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts_arabic/fonts.dart';

class WelcomeUser extends StatelessWidget {
  final String name;
  const WelcomeUser({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    var locale = Localizations.localeOf(context);
    return Container(
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
      child: Scaffold(
        backgroundColor: ClearColor,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: AssetImage(
                  "assets/images/welcomeuser.png",
                ),
                width: 250,
                height: 350,
              ),
              dimecom.spacelitlle,
              Text(
                'Welcome\t${name}',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16),
              Text(
                "We are glad you visited our clinic",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              SizedBox(height: 32),
              // ElevatedButton(
              //   onPressed: () {
              //     // انتقل إلى واجهة حجز الموعد
              //     Navigator.of(context).pushNamed("booking");
              //   },
              //   child: Text("Appointment Booking"),
              // ),
              InkWell(
                onTap: () {
                  // if (provider.formKey.currentState!.validate()) {}
                  Navigator.of(context).pushNamed("booking");
                },
                child: Container(
                  width: 200,
                  height: 45,
                  decoration: ContButton,
                  child: Center(
                    child: Text(
                      "book appointment",
                      style: locale == Locale("en")
                          ? TextStyle(
                              fontFamily: ArabicFonts.Amiri,
                              package: 'google_fonts_arabic',
                              fontSize: 18.0,
                            )
                          : TextStyle(
                              fontFamily: ArabicFonts.Amiri,
                              package: 'google_fonts_arabic',
                              fontSize: 14.0,
                            ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
