import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';

import '../../constants.dart';


class LiteRollingS extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Center(
     child: Container(
       height: 45,
       child:
         //By default
         LiteRollingSwitch(
           value: true,
           textOff: "Non   ",
           colorOff: secendColor2,
           colorOn: kPrimaryDarkColor,
           textOn: "   Oui",
           textSize: 18,
           iconOff: Icons.clear_rounded,
           onChanged: (bool state) {
             print('turned ${(state) ? 'Oui' : 'Non'}');
           },
         ),
     ),
   );
  }

}