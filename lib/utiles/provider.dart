import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../Screens/BaseScreens/register.dart';


MyProviders a = MyProviders();
dynamic vaue;
dynamic valu;

enum Gender { male, female }

class MyProviders extends ChangeNotifier {
  static final RegExp alphaExp = RegExp('[a-zA-Z]');
      TextEditingController nameController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController ConUserName = TextEditingController();
  TextEditingController ConfirmPass = TextEditingController();
  TextEditingController UserController = TextEditingController();
  TextEditingController EmailController = TextEditingController();
  TextEditingController restEmailController = TextEditingController();
  TextEditingController PhoneController = TextEditingController();
  Gender gender = Gender.male;

  void changeGender(Gender gender) {
    this.gender = gender;
    notifyListeners();
  }

  bool pass = true;
  final formKey = GlobalKey<FormState>();
  // final GlobalKey myGlobalKey = GlobalKey();
  final myGlobalKey = GlobalKey<FormState>();

  final GlobalKey<FormState> form = GlobalKey<FormState>();
  final GlobalKey obalKey = GlobalKey();
  // Gender? selectedGender;
  late Gender selectedGender = Gender.male;
  double value = 0;

  // Gender? get selectedGenders => selectedGender;

  // void setSelectedGender(Gender gender) {
  //   selectedGender = gender;
  //   notifyListeners();
  // }

  void selectgenderM() {
    selectedGender = Gender.male;
    notifyListeners();
  }

  void selectgenderF() {
    selectedGender = Gender.female;
    notifyListeners();
  }

  Future<void> loadData() async {
    // Load your data here...
  }

  ShowPass() {
    pass = !pass;
    notifyListeners();
  }

  var validateMobile = (value) {
    if (value.length != 10)
      return 'Mobile Number must be of 10 digit';
    else
      return null;
  };
  var validateMobilear = (value) {
    if (value.length != 10)
      return 'رقم الهاتف يجب أن تكون عشر أرقام';
    else
      return null;
  };

  var userval = (value) => value.isEmpty
      ? 'Enter Your Name'
      : (alphaExp.hasMatch(value)
          ? null
          : 'Only Alphabets are allowed in a username');
  var uservalar = (value) => value.isEmpty
      ? 'ادخل الاسم من فضلك'
      : (alphaExp.hasMatch(value) ? null : 'فقط الاحرف مسموحة');
  var valiemail = ((value) {
    if (value == null ||
        value.isEmpty ||
        !value.contains('@') ||
        !value.contains('.')) {
      return 'Enter a Valid Email Address';
    }
    return null;
  });
  var valiemailar = ((value) {
    if (value == null ||
        value.isEmpty ||
        !value.contains('@') ||
        !value.contains('.')) {
      return 'أدخل البريد الالكتروني';
    }
    return null;
  });

  void pushregy(BuildContext context) {
    Navigator.of(context).pushNamed("register");
  }

  Future<Object?> arrowlogin(BuildContext context) =>
      Navigator.of(context).pushNamed("login");
  void arrowloginy(BuildContext context) {
    Navigator.of(context).pop();
  }

  var validpass = (value) {
    if (value.isEmpty) {
      return 'Please enter your password';
    } else if (value.length < 6) {
      return 'Password must be at least 6 characters long';
    }
    return null;
  };
  var validpassar = (value) {
    if (value.isEmpty) {
      return 'من فضلك أدخل كلمة المرور';
    } else if (value.length < 6) {
      return 'يجب ان تكون ستة محارف';
    }
    return null;
  };
  var validconpass = (value) {
    Register a = Register();
    if (value.isEmpty || value.length < 6) {
      return 'Please re-enter your password';
    } else if (value != a.PassController.text) {
      return null;
    }
    return null;
  };
  var validconpassar = (value) {
    Register a = Register();
    if (value.isEmpty || value.length < 6) {
      return 'من فضلك اعد كتابة كلمة المرور';
    } else if (value != a.PassController.text) {
      return null;
    }
    return null;
  };

  @override
  void dispose() {
    super.dispose();
  }

  void toggleDrawer() {
    bool isDrawerOpen = false;
    isDrawerOpen = !isDrawerOpen;
    notifyListeners();
  }
}

Set<PointerDeviceKind> get dragDevices => {
      PointerDeviceKind.touch,
      PointerDeviceKind.mouse,
      // etc.
    };
