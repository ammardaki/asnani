import 'package:asnani_app/style/constant.dart';
import 'package:asnani_app/utiles/provider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

import '../style/reusablebg.dart';
import '../style/Iconcontent.dart';

class gender extends StatelessWidget {
  const gender({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<MyProviders>(builder: (context, provider, child) {
      return Row(
        
        children: [
          GestureDetector(
            onTap: () {
              provider.selectgenderM();
            },
            child: ReusableBg(
              colour: provider.selectedGender == Gender.male
                  ? kactiveCardColor
                  : kinactiveCardColor,
              cardChild:
                  IconContent(myicon: FontAwesomeIcons.mars, text: 'MALE'),
            ),
          ),
          SizedBox(
            width: 15.0,
          ),
          GestureDetector(
            onTap: () {
              provider.selectgenderF();
            },
            child: ReusableBg(
              colour: provider.selectedGender == Gender.female
                  ? kactiveCardColor
                  : kinactiveCardColor,
              cardChild:
                  IconContent(myicon: FontAwesomeIcons.venus, text: 'FEMALE'),
            ),
          ),
        ],
      );
    });
  }
}
