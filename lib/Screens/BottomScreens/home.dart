import 'package:asnani_app/Screens/bottom/cancel.dart';
import 'package:asnani_app/Screens/bottom/coming.dart';
import 'package:asnani_app/style/config.dart';
import 'package:asnani_app/style/constant.dart';
import 'package:asnani_app/utiles/password_validation_provider.dart';
import 'package:asnani_app/utiles/settingpro.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../bottom/upcoming.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
 
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(
          left: 20.0,
          right: 20.0,
          top: 20.0,
        ),
        child: Scaffold(
          backgroundColor: ClearColor,
          body: CustomScrollView(
            physics: AlwaysScrollableScrollPhysics(),
            slivers: [
              SliverFillRemaining(
        fillOverscroll: true,
            
            child: Stack(
              children: [
                // العناصر في الجزء العلوي هنا
                Align(
                  alignment: Alignment.topCenter,
                  child: DefaultTabController(
                    // Added
                    length: 3, // Added
                    initialIndex: 0, //Add(
                    child: Scaffold(
                      backgroundColor: ClearColor,
                      appBar: AppBar(
                        elevation: 0.0,
                        backgroundColor: ClearColor,
                        bottom: TabBar(
                          tabs: [
                            Tab(
                              text: "Upcoming",
                            ),
                            Tab(
                              text: "Coming",
                            ),
                            Tab(
                              text: "Cancel",
                            ),
                          ],
                        ),
                        title: Center(child: const Text('Appointment Scheduler')),
                      ),
                      body: const TabBarView(
                        children: [
                          UpComing(),
                          Coming(),
                          Cancel(),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
       ] ),
      ),
    ));
  }
}

class ScheduleCard extends StatelessWidget {
  const ScheduleCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(
          10.0,
        ),
      ),
      width: double.infinity,
      padding: const EdgeInsets.all(20.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          const Icon(
            Icons.calendar_today,
            color: Config.primaryColor,
            size: 15.0,
          ),
          const SizedBox(
            width: 5.0,
          ),
          Text(
            "Monday, 11/28/2022",
            style: const TextStyle(
              color: Config.primaryColor,
            ),
          ),
          const SizedBox(
            width: 20.0,
          ),
          const Icon(
            Icons.access_alarm,
            color: Config.primaryColor,
            size: 17.0,
          ),
          SizedBox(
            width: 5.0,
          ),
          Flexible(
            child: Text(
              "2:00 PM",
              style: TextStyle(
                color: Config.primaryColor,
              ),
            ),
          )
        ],
      ),
    );
  }
}
