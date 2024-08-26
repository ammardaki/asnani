import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Color ClearColor = Colors.transparent;
Color kwhite = Colors.white;
TextStyle loginSty = TextStyle(
    fontSize: 45.0,
    fontWeight: FontWeight.bold,
    fontFamily: GoogleFonts.sofia(fontStyle: FontStyle.italic).fontFamily);
TextStyle ForgetSty = TextStyle(
    fontSize: 30.0,
    fontWeight: FontWeight.bold,
    fontFamily: GoogleFonts.sofia(fontStyle: FontStyle.italic).fontFamily);
TextStyle forget = TextStyle(
  color: kwhite,
  fontWeight: FontWeight.bold,
  fontFamily: GoogleFonts.openSans().fontFamily,
);
TextStyle button = TextStyle(
  fontSize: 25.5,
  fontWeight: FontWeight.bold,
  fontFamily: GoogleFonts.courgette().fontFamily,
);
TextStyle NoAccount = TextStyle(
    fontSize: 12,
    fontFamily: GoogleFonts.aleo().fontFamily,
    letterSpacing: 1.7);
TextStyle Account = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.bold,
    fontFamily: GoogleFonts.aleo().fontFamily,
    letterSpacing: 1.7);
TextStyle reginav = TextStyle(
    fontSize: 12,
    fontFamily: GoogleFonts.lora().fontFamily,
    color: Colors.green,
    fontWeight: FontWeight.bold,
    letterSpacing: 1.7);
TextStyle loginnav = TextStyle(
    fontSize: 12,
    fontFamily: GoogleFonts.lora().fontFamily,
    color: Colors.indigo,
    fontWeight: FontWeight.bold,
    letterSpacing: 1.7);
Decoration ContButton = (BoxDecoration(
  color: Color.fromRGBO(12, 192, 223, 1),
  borderRadius: BorderRadius.circular(
    10.0,
  ),
));
Decoration ForContButton = (BoxDecoration(
    color: Color.fromRGBO(12, 192, 223, 1),
    borderRadius: BorderRadius.circular(15)));

class dimecom {
  static const spacelitlle = SizedBox(
    height: 5.0,
  );
  static const spaceSmall = SizedBox(
    height: 10.0,
  );
  static final spaceMedium = SizedBox(
    height: 15.0,
  );
  static final space20 = SizedBox(
    height: 20.0,
  );
  static final spaceBig = SizedBox(
    height: 25.0,
  );
  static final space30 = SizedBox(
    height: 30.0,
  );
  static final width25 = SizedBox(
    width: 25.0,
  );
  static final widthR = SizedBox(
    width: 15.0,
  );
  static final widtR = SizedBox(
    width: 25.0,
  );
}

const kactiveCardColor = Color.fromRGBO(12, 192, 223, 1);
const kinactiveCardColor = Colors.white30;
const ksliderInactiveColor = Color(0xFF8D8E98);
const kbottomContainerHeight = 30.0;
const kbottomContainerColor = Color(0xFFEB1555);
const klabelTextStyle = TextStyle(
  fontSize: 10.0,
  color: Color(0xFF8D8E98),
  fontWeight: FontWeight.bold,
);
const kDigitTextStyle = TextStyle(
  fontSize: 50,
  fontWeight: FontWeight.w900,
);
const klargeBottomButtonTextStyle = TextStyle(
  fontWeight: FontWeight.bold,
  color: Colors.white,
  fontSize: 15.0,
);
const ktitleTextStyle = TextStyle(
  fontSize: 50.0,
  fontWeight: FontWeight.bold,
);
const kResultTextStyle = TextStyle(
  color: Color(0xFF24D876),
  fontSize: 27.0,
  fontWeight: FontWeight.bold,
);

const kBMITextStyle = TextStyle(
  fontSize: 100.0,
  fontWeight: FontWeight.bold,
);
const kBodyTextStyle = TextStyle(
  fontSize: 22,
);
