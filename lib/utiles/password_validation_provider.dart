import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

enum FilterStatus {
  upcoming,
  complete,
  cancel,
}

extension StatusTranslation on FilterStatus {
  String? get translation {
    switch (this) {
      case FilterStatus.upcoming:
        return "انتظار";
      case FilterStatus.complete:
        return "مكتمل";
      case FilterStatus.cancel:
        return "ملغى";
    }
  }
}

class provy extends ChangeNotifier {
  List<String> filtstatus = [
    "xx",
    "xxc",
    "vv",
  ];
  var stat = [
    "قادم",
    "مكتمل",
    "ملغى",
  ];
  Map<FilterStatus, String> statusTranslations = {
    FilterStatus.upcoming: 'قادم',
    FilterStatus.complete: "مكتمل",
    FilterStatus.cancel: 'ملغى',
  };
  var k = [
    "انتظار",
    "مكتمل",
    "مممم",
  ];

  Alignment alignment = Alignment.centerLeft;
  FilterStatus status = FilterStatus.upcoming; //initial status
  List<dynamic> schedules = [
    {
      
      "patient_name": "Carla Mon",
      "patient_profile": "assets/images/person.jpg",
      "statu": "Barodontalgi",

      "status": FilterStatus.upcoming,
    },
    {
      "patient_name": "Abdullah Ahamd",
      "patient_profile": "assets/images/person1.jpg",
      "statu": "Periodontal abscess",
      "status": FilterStatus.complete,
    },
    {
      "patient_name": "Malk Saead",
      "patient_profile": "assets/images/person2.jpg",
      "statu": "Abscess",
      "status": FilterStatus.complete,
    },
    {
      "patient_name": "Mona",
      "patient_profile": "assets/images/person3.jpg",
      "statu": "Bleaching",
      "status": FilterStatus.cancel,
    }
  ];
  var condi = (FilterStatus status, BuildContext context) {
    final proo = Provider.of(context);
    if (proo.filterStatus == FilterStatus.upcoming) {
      status = FilterStatus.upcoming;
      proo.alignment = Alignment.centerLeft;
    } else if (proo.filterStatus == FilterStatus.complete) {
      status = FilterStatus.complete;
      proo.alignment = Alignment.center;
    } else if (proo.filterStatus == FilterStatus.cancel) {
      status = FilterStatus.cancel;
      proo.alignment = Alignment.centerRight;
    }
  };
}
