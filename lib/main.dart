// ignore_for_file: unused_import
import 'package:asnani_app/Screens/BaseScreens/setting.dart';
import 'package:asnani_app/Screens/splash.dart';
import 'package:asnani_app/l10n/l10n.dart';
import 'package:asnani_app/user/appointmentscreen.dart';
import 'package:asnani_app/user/welcome_user.dart';
import 'package:asnani_app/utiles/localprovider.dart';
import 'package:asnani_app/utiles/password_validation_provider.dart';
import 'package:asnani_app/utiles/provider.dart';
import 'package:asnani_app/utiles/selectindex.dart';
import 'package:asnani_app/utiles/settingpro.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'Screens/BaseScreens/forgetpass.dart';
import 'Screens/BaseScreens/homepage.dart';
import 'Screens/BaseScreens/login.dart';
import 'Screens/BaseScreens/register.dart';
import 'Screens/BottomScreens/home.dart';

MyProviders a = MyProviders();
void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => MyProviders()),
        ChangeNotifierProvider(create: (_) => SelectIndexBottom()),
        ChangeNotifierProvider(create: (_) => LocaleProvider()),
        ChangeNotifierProvider(create: (_) => provy()),
        ChangeNotifierProvider(create: (_) => settingPro()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final lang = Provider.of<LocaleProvider>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      supportedLocales: L10n.all,

      localizationsDelegates: [
        AppLocalizations.delegate,
        AppLocalizations.localizationsDelegates[1],
        AppLocalizations.localizationsDelegates[2],
        AppLocalizations.localizationsDelegates[3],
      ],
      locale: lang.locale,

      initialRoute: 'main',
      routes: {
        'main': (context) => const SplashScreen(),
        'login': (context) => Login(
              email: "",
              pass: "",
            ),
        'home': (context) => HomePage(
              name: "",
              email: "",
              phone: "",
            ),
        'register': (context) => Register(),
        'forpass': (context) => ForgetPassword(),
        "settings": (context) => Settings(),
        "welcomeuser": (context) => WelcomeUser(
              name: "",
            ),
        "booking": (context) => AppointmentScreen(),
      },

      // home: SplashScreen(),
    );
  }
}
