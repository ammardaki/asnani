import 'package:asnani_app/style/config.dart';
import 'package:asnani_app/utiles/settingpro.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../BottomScreens/home.dart';

class UpComing extends StatelessWidget {
  const UpComing({super.key});

  @override
  Widget build(BuildContext context) {
    final prov = Provider.of<settingPro>(context);

    return Stack(
      children: [
        ListView.builder(
          itemCount: prov.upcominglist.length,
          itemBuilder: ((context, index) {
            var _schedule = prov.upcominglist[index];
            bool isLastElement = prov.upcominglist.length + 1 == index;
            return Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                  side: BorderSide(
                    color: Colors.grey,
                  ),
                ),
                margin: !isLastElement
                    ? const EdgeInsets.only(
                        bottom: 20.0,
                      )
                    : EdgeInsets.zero,
                child: Padding(
                  padding: const EdgeInsets.all(
                    15.0,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage(
                              _schedule['patient_profile'],
                            ),
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                _schedule['patient_name'],
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              const SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                _schedule['category'],
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w600,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 15.0,
                      ),
                      //Schedule Card
                      ScheduleCard(),
                      const SizedBox(
                        height: 15.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: OutlinedButton(
                              onPressed: () {},
                              child: const Text(
                                "Cancel",
                                style: TextStyle(
                                  color: Config.primaryColor,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 20.0,
                          ),
                          Expanded(
                            child: OutlinedButton(
                              onPressed: () {},
                              style: OutlinedButton.styleFrom(
                                backgroundColor: Config.primaryColor,
                              ),
                              child: const Text(
                                "Reschedule",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ));
          }),
        ),
      ],
    );
  }
}
