import 'package:asnani_app/style/constant.dart';
import 'package:asnani_app/user/confirm.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_fonts_arabic/fonts.dart';
import 'package:provider/provider.dart';

import '../Component/textinput.dart';
import '../model/lang.dart';
import '../utiles/provider.dart';

class AppointmentScreen extends StatefulWidget {
  @override
  State<AppointmentScreen> createState() => _AppointmentScreenState();
}

class _AppointmentScreenState extends State<AppointmentScreen> {
  DateTime selectedDate = DateTime.now();
  TimeOfDay selectedTime = TimeOfDay.now();
  Future _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime.now(),
      lastDate: DateTime.now().add(Duration(days: 30)),
    );
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
      });
  }

  Future _selectTime(BuildContext context) async {
    final TimeOfDay? picked =
        await showTimePicker(context: context, initialTime: selectedTime);
    if (picked != null && picked != selectedTime)
      setState(() {
        selectedTime = picked;
      });
  }

  @override
  Widget build(BuildContext context) {
    var locale = Localizations.localeOf(context);
    final provider = Provider.of<MyProviders>(context);
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
          title: Text("Book an appointment at the clinic"),
        ),
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
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
                controller: provider.nameController,
                textInputType: TextInputType.text,
                textInputAction: TextInputAction.next,
                vali: locale == Locale("en")
                    ? provider.userval
                    : provider.uservalar,
                prif: Icon(
                  FontAwesomeIcons.user,
                ),
              ),
              dimecom.spaceMedium,
              TextInputSp(
                controller: provider.phoneNumberController,
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
              ListTile(
                title: Text(
                    'booking date: ${selectedDate.toString().substring(0, 10)}'),
                trailing: Icon(Icons.calendar_today),
                onTap: () => _selectDate(context),
              ),
              ListTile(
                title: Text('booking time: ${selectedTime.format(context)}'),
                trailing: Icon(Icons.access_time),
                onTap: () => _selectTime(context),
              ),
              SizedBox(height: 16.0),
              // ElevatedButton(
              //   onPressed: () {
              //     // اتصل بواجهة أخرى لحفظ موعد الحجز في العيادة
              //   },
              //   child: Text("book appointment"),
              // ),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: ((context) {
                        return ConfirmationScreen(
                          date: selectedDate.toString().substring(0, 10),
                          time: selectedTime.format(context),
                        );
                      }),
                    ),
                  );
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
