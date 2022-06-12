import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../constants.dart';
import '../../provider/search_state.dart';

/// This widget is the home page of the application.
class SliderSearch extends StatelessWidget {
  double max;
  double min;
  String cv="CV";
  SliderSearch({Key? key, required this.max, required this.min, required this.cv})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 10),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: kPrimaryDarkColor,
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: [
                Consumer<SearchState>(builder: (context, valuesSate, chid) {
                  return Text(cv=="CV"? valuesSate.valueInitialCv.round().toString()
                      :cv=="KM"?valuesSate.valueInitialKm.round().toString()
                      :valuesSate.valueInitialAnnee.round().toString(),
                    style: const TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontFamily: "OpenSans",
                        fontWeight: FontWeight.bold),
                  );
                }),
                const SizedBox(
                  width: 3,
                ),
                Consumer<SearchState>(builder: (context, valuesSate, chid) {
                  return Text(cv=="CV"?"CV":cv=="KM"?"KM":"A",
                    style: const TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                        fontFamily: "OpenSans",
                        fontWeight: FontWeight.bold),
                  );
                }),
              ],
            ),
          ),
          SliderTheme(
            data: const SliderThemeData(
                activeTrackColor: Colors.white,
                thumbColor: kPrimaryDarkColor,
                overlayColor: Colors.white,
                thumbShape: RoundSliderThumbShape(enabledThumbRadius: 13.0),
                trackHeight: 9.0,
                overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0),
                valueIndicatorColor: Colors.red,
                valueIndicatorTextStyle: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                )),
            child: Consumer<SearchState>(builder: (context, valuesSate, chid) {
              return Slider(
                min: min,
                max: max,
                value: cv=="CV"?valuesSate.valueInitialCv:cv=="KM"?valuesSate.valueInitialKm:valuesSate.valueInitialAnnee,
                activeColor: kPrimaryDarkColor,
                onChanged: (dynamic newValue) {
                  cv=="CV"?Provider.of<SearchState>(context, listen: false).changeSliderCv(newValue)
                      :cv=="KM"?Provider.of<SearchState>(context, listen: false).changeSliderKm(newValue)
                      :Provider.of<SearchState>(context, listen: false).changeSliderAnnee(newValue);
                },
              );
            }),
          )
        ],
      ),
    );
  }
}
