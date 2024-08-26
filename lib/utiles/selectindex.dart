import 'package:asnani_app/Screens/BottomScreens/info.dart';
import 'package:asnani_app/Screens/BottomScreens/patient.dart';
import 'package:asnani_app/model/patients.dart';
import 'package:flutter/material.dart';

import '../Screens/BottomScreens/home.dart';
import '../Screens/BaseScreens/setting.dart';

class p {
  static int index = 1;
  static unwellP un = unwellP(8, "", "", "", "", "");

  p();
}

class SelectIndexBottom extends ChangeNotifier {
  p a = p();
  late unwellP unwell;
  List<dynamic> screens = [
    Home(),
    Patient(
      itemIndex: p.index,
      unwe: p.un,
    ),
    Settings()
  ];
  int _currentIndex = 0;

  int get currentIndex => _currentIndex;

  set currentIndex(int index) {
    _currentIndex = index;
    notifyListeners();
  }
}
