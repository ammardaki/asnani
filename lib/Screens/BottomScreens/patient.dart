// ignore_for_file: must_be_immutable

import 'package:asnani_app/Screens/BottomScreens/detailpatient.dart';
import 'package:asnani_app/model/lang.dart';
import 'package:asnani_app/model/patients.dart';
import 'package:flutter/material.dart';

class Patient extends StatelessWidget {
  TextEditingController textController = TextEditingController();

  final String? name;
  final String? phone;
  final int itemIndex;
  final unwellP unwe;

  final void Function()? press;

  Patient({
    Key? key,
    this.name,
    this.phone,
    required this.itemIndex,
    required this.unwe,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var actions = translation(context).actions;
    void press() {
      // Navigator.of(context).push(MaterialPageRoute(builder: ((context) {
      //   return DetailPatient(
      //     i: itemIndex,
      //     unwell: unwe,
      //   );
      // })));
    }

    var locale = Localizations.localeOf(context);
    return Scaffold(
      body: SafeArea(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned.fill(
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.green,
                      Colors.blue,
                      Colors.greenAccent,
                      Colors.blueAccent,
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
              ),
            ),
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  bottom: -25,
                  child: Container(
                    margin: EdgeInsets.only(bottom: 25.0),
                    padding:
                        const EdgeInsets.only(top: 15, left: 25, right: 25),
                    height: 125,
                    child: locale == Locale("en")
                        ? Column(
                            children: [
                              TextField(
                                controller: textController,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Search...',
                                  prefixIcon: Icon(Icons.search),
                                ),
                              )
                            ],
                          )
                        : Column(
                            children: [
                              TextField(
                                controller: textController,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Search...',
                                  prefixIcon: Icon(Icons.search),
                                ),
                              )
                            ],
                          ),
                  ),
                ),
                Positioned(
                  top: 50,
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: SizedBox(
                    height: 150,
                    child: ListView.builder(
                      itemCount: actions.length,
                      itemBuilder: (BuildContext context, int index) {
                        return InkWell(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: ((context) {
                                  return DetailPatient(
                                    i: index,
                                    unwell: unwe,
                                  );
                                }),
                              ),
                            );
                          },
                          child: Container(
                            margin: EdgeInsets.symmetric(
                                vertical: 10, horizontal: 20),
                            padding: EdgeInsets.all(5.5),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 2,
                                  blurRadius: 5,
                                  offset: Offset(0, 3),
                                ),
                              ],
                            ),
                            child: ListView(shrinkWrap: true, children: [
                              Row(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(15),
                                    child: SizedBox(
                                      height: 100,
                                      width: 75,
                                      child: Image(
                                        image: AssetImage(
                                          actions[index].image,
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 25.0,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        actions[index].name,
                                      ),
                                      Text(
                                        actions[index].age,
                                      ),
                                      Text(
                                        actions[index].gender,
                                      ),
                                      Text(
                                        actions[index].address,
                                        overflow: TextOverflow.visible,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ]),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
