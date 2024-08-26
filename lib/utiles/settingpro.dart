import 'package:flutter/cupertino.dart';

class settingPro with ChangeNotifier {
  List<dynamic> upcominglist = [
    {
      "patient_name": "Carla Mon",
      "patient_profile": "assets/images/person3.jpg",
      "category": "Sensitivity",
    },
    {
      "patient_name": "Abdullah Ahamd",
      "patient_profile": "assets/images/sick2.jpg",
      "category": " Tooth abscess",
    },
  ];
  List<dynamic> cominglist = [
    {
      "patient_name": "Mona Saead",
      "patient_profile": "assets/images/person.jpg",
      "category": "Oral thrush",
    },
    {
      "patient_name": "Mohmad",
      "patient_profile": "assets/images/sickkk.jpg",
      "category": "Dry mouth",
    }
  ];
  List<dynamic> cancellist = [
    {
      "patient_name": "Carla Mon",
      "patient_profile": "assets/images/person4.jpg",
      "category": " Tooth decay ",
    },
  ];
  bool valNotify1 = true;
  bool valNotify2 = false;
  bool valNotify3 = false;
  onChangeFunction1(bool newval1) {
    valNotify1 = newval1;
    notifyListeners();
  }

  onChangeFunction2(bool newval2) {
    valNotify2 = newval2;
  }

  onChangeFunction3(bool newval3) {
    valNotify3 = newval3;
  }
}
