
import 'package:accordion/accordion.dart';
import 'package:accordion/controllers.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';




/// Main example page
class AccordionPage extends StatelessWidget{
  String title;
  var widget;
  AccordionPage({Key? key,required this.title, required this.widget}) : super(key: key);
  int selected = 0;

  final _headerStyle = const TextStyle(
      fontFamily: 'OpenSans',
      color: Color(0xffffffff), fontSize: 17, fontWeight: FontWeight.bold);

    @override
  Widget build(BuildContext context) {
    return Accordion(
          paddingListBottom:10,
          disableScrolling: true,
          maxOpenSections: 2,
          headerBackgroundColorOpened: Colors.black54,
          headerPadding: const EdgeInsets.symmetric(vertical: 7, horizontal: 5),
          sectionOpeningHapticFeedback: SectionHapticFeedback.heavy,
          sectionClosingHapticFeedback: SectionHapticFeedback.light,
          children: [
            AccordionSection(
              isOpen: false,
              rightIcon: Container(
                padding: const EdgeInsets.only(right: 8),
                child: const Icon(Icons.keyboard_arrow_down_sharp, color: Colors.white,size: 32,),
              ),
              header: Container(
                  padding: const EdgeInsets.fromLTRB(10, 8, 0, 8),
                  child: Text(title, style: _headerStyle)),
              contentBorderColor: const Color(0xffffffff),
              headerBackgroundColorOpened: kPrimaryDarkColor,
              headerBackgroundColor: secondColor,
              content:  widget

            ),
          ],

    );
  }
} //__