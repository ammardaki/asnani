import 'package:asnani_app/style/constant.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts_arabic/fonts.dart';

class ConfirmationScreen extends StatelessWidget {
  final String date;
  final String time;

  ConfirmationScreen({required this.date, required this.time});

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
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: ClearColor,
          title: Center(child: Text('Booking Confirmation')),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.check_circle,
                color: Colors.green,
                size: 100,
              ),
              SizedBox(height: 16),
              Text(
                "Appointment booked successfully!",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16),
              Text(
                'booking date: $date',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 8),
              Text(
                'booking time : $time',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 32),
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
                      "book another appointment",
                      style: locale == Locale("en")
                          ? TextStyle(
                              fontFamily: ArabicFonts.Amiri,
                              package: 'google_fonts_arabic',
                              fontWeight: FontWeight.bold,
                              fontSize: 15.0,
                            )
                          : TextStyle(
                              fontFamily: ArabicFonts.Amiri,
                              fontWeight: FontWeight.bold,
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
