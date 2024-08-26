import 'package:asnani_app/Screens/BaseScreens/login.dart';
import 'package:asnani_app/style/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_fonts_arabic/fonts.dart';
import 'package:provider/provider.dart';

import '../../model/lang.dart';
import '../../utiles/localprovider.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool valNotify1 = true;
  bool valNotify2 = false;
  bool valNotify3 = false;
  onChangeFunction1(bool newval1) {
    setState(() {
      valNotify1 = newval1;
    });
  }

  onChangeFunction2(bool newval2) {
    setState(() {
      valNotify2 = newval2;
    });
  }

  onChangeFunction3(bool newval3) {
    setState(() {
      valNotify3 = newval3;
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Container(
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
        body: Container(
          padding: EdgeInsets.all(10.0),
          child: ListView(
            children: [
              Row(
                children: [
                  Icon(
                    Icons.person,
                    color: Colors.indigo,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    "Account",
                    style: TextStyle(
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
              Divider(
                height: 20.0,
                thickness: 1,
              ),
              SizedBox(
                height: 10.0,
              ),
              buildAccountOptions(context, "Personal information"),
              buildAccountOption(context, "Password"),
              buildLangugeOption(context, "Language"),
              buildAccountOptions(context, "Privacy and Security"),
              SizedBox(
                height: 40.0,
              ),
              Row(
                children: [
                  Icon(
                    Icons.volume_up_outlined,
                    color: Colors.indigo,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    "Notifications",
                    style: TextStyle(
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Divider(
                height: 20.0,
                thickness: 1,
              ),
              SizedBox(
                height: 10.0,
              ),
              buildNotificationOption(
                  "Account Active", valNotify2, onChangeFunction2),
              buildNotificationOption(
                  "Opportunity", valNotify3, onChangeFunction3),
              SizedBox(
                height: 50.0,
              ),
              Center(
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(horizontal: 40.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return Login(email: "", pass: "");
                    }));
                  },
                  child: Text(
                    "SIGN OUT",
                    style: TextStyle(
                        fontSize: 16.0,
                        letterSpacing: 2.2,
                        color: Colors.black),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Padding buildNotificationOption(
      String title, bool value, Function onChangeMethod) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w500,
                color: Colors.white),
          ),
          Transform.scale(
            scale: 0.7,
            child: CupertinoSwitch(
              activeColor: Colors.blue,
              trackColor: Colors.grey,
              value: value,
              onChanged: (bool newval) {
                onChangeMethod(newval);
              },
            ),
          )
        ],
      ),
    );
  }

  GestureDetector buildAccountOption(BuildContext context, String title) {
    return GestureDetector(
      onTap: () {
        showDialog(
          context: context,
          builder: ((context) => AlertDialog(
                title: Text(
                  title,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      children: [
                        Column(
                          children: [
                            Text("data"),
                            Text("data"),
                          ],
                        ),
                        Spacer(),
                        Text("data"),
                      ],
                    ),

                    Divider(
                      color: Colors.grey,
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            Text("data"),
                            Text("data"),
                          ],
                        ),
                        Spacer(),
                        Text("data"),
                      ],
                    ),

                    // Row(
                    //   children: [
                    //     Column(
                    //       children: [
                    //         Row(
                    //           children: [
                    //             Text("edit"),

                    //             Column(
                    //               children: [
                    //                 Text("name"),
                    //                 Text(""),
                    //               ],
                    //             ),
                    //           ],
                    //         ),
                    //       ],
                    //     )
                    //   ],
                    // )
                  ],
                ),
                actions: [
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text("Close"))
                ],
              )),
        );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 8,
          horizontal: 20,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
            Icon(
              Icons.arrow_forward_ios,
              color: Colors.grey,
            )
          ],
        ),
      ),
    );
  }

  GestureDetector buildAccountOptions(BuildContext context, String title) {
    return GestureDetector(
      onTap: () {
        showDialog(
          context: context,
          builder: ((context) => AlertDialog(
                title: Center(
                  child: Text(
                    title,
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      children: [
                        Column(
                          children: [
                            Text("name"),
                            Text("my name"),
                          ],
                        ),
                        Spacer(),
                        Text("edit"),
                      ],
                    ),
                    Divider(
                      color: Colors.grey,
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            Text("Email"),
                            Text("my email"),
                          ],
                        ),
                        Spacer(),
                        Text("edit"),
                      ],
                    ),
                    Divider(
                      color: Colors.grey,
                    )
                  ],
                ),
                actions: [
                  Row(
                    children: [
                      TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text("Save")),
                      Spacer(),
                      TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text("Close")),
                    ],
                  )
                ],
              )),
        );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 8,
          horizontal: 20,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
            Icon(
              Icons.arrow_forward_ios,
              color: Colors.grey,
            )
          ],
        ),
      ),
    );
  }
}

GestureDetector buildLangugeOption(BuildContext context, String title) {
  var englishText = translation(context).english;
  var arabicText = translation(context).arabic;
  return GestureDetector(
    onTap: () {
      showDialog(
        context: context,
        builder: ((context) => AlertDialog(
              title: Center(child: Text(title)),
              content: MaterialButton(
                onPressed: () {
                  showLanguageChangeDialog(context);
                },
                child: Text('Change Language'),
              ),
              actions: [
                TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text("Close"))
              ],
            )),
      );
    },
    child: Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 8,
        horizontal: 20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
          Icon(
            Icons.arrow_forward_ios,
            color: Colors.grey,
          )
        ],
      ),
    ),
  );
}

showLanguageChangeDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('Change Language'),
        content: SingleChildScrollView(
          child: ListBody(
            children: [
              GestureDetector(
                onTap: () {
                  // Change the language to English
                  final providers =
                      Provider.of<LocaleProvider>(context, listen: false);
                  providers.setLocale(Locale('en'));
                  Navigator.of(context).pop();
                },
                child: Text(translation(context).english),
              ),
              SizedBox(height: 10),
              GestureDetector(
                onTap: () {
                  // Change the language to Arabic
                  final providers =
                      Provider.of<LocaleProvider>(context, listen: false);
                  providers.setLocale(Locale('ar'));
                  Navigator.of(context).pop();
                },
                child: Text(translation(context).arabic),
              ),
            ],
          ),
        ),
      );
    },
  );
}
