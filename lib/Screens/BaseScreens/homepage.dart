// ignore_for_file: must_be_immutable

import 'package:asnani_app/Component/drawer.dart';
import 'package:asnani_app/model/lang.dart';
import 'package:asnani_app/style/constant.dart';
import 'package:asnani_app/utiles/selectindex.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../Component/appbarbottom.dart';


class HomePage extends StatelessWidget {
  String? name, phone;
  String email;
  String? titile;

  HomePage({this.name, required this.email, this.phone, this.titile});

  @override
  Widget build(BuildContext context) {
    final bottomNavbar = Provider.of<SelectIndexBottom>(context);
    return Stack(
      children: [
        Container(
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
        ),
        Scaffold(
          // drawer: Drawerb(
          //   name: this.name ?? "",
          //   phone: this.phone ?? "",
          // ),
          appBar: AppbarDetails(context, translation(context).appname),
          backgroundColor: ClearColor,
          body: bottomNavbar.screens[bottomNavbar.currentIndex],
          bottomNavigationBar: BottomNavigationBar(
            elevation: 0.0,
            backgroundColor: ClearColor,
            selectedItemColor: Colors.black,
            selectedLabelStyle: TextStyle(color: Colors.black),
            unselectedItemColor: Colors.white,
            unselectedLabelStyle: TextStyle(color: Colors.white),
            currentIndex: bottomNavbar.currentIndex,
            onTap: (index) {
              bottomNavbar.currentIndex = index;
            },
            items: [
              BottomNavigationBarItem(
                label: translation(context).homePage,
                icon: Icon(
                  Icons.home,
                ),
              ),
              BottomNavigationBarItem(
                label: translation(context).Pathent,
                icon: Icon(
                  Icons.person,
                ),
              ),
              BottomNavigationBarItem(
                label: translation(context).settings,
                icon: Icon(
                  Icons.settings,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
