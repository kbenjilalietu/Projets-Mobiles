import 'package:ebak/widgets/search_wedget/two_button.dart';
import 'package:flutter/cupertino.dart';

import 'accordion.dart';

class AccordionPageImplement extends StatefulWidget{
  @override
  State<AccordionPageImplement> createState() => _AccordionPageImplementState();
}

class _AccordionPageImplementState extends State<AccordionPageImplement> {
  int selected=0;
  var list;
  @override
  Widget build(BuildContext context)
  {
    return
      AccordionPage(title:"Boite à vitesse", widget: TwoButton(
        onPressed: onPressed,
        selected: selected,
        list: null,
      ));
  }

  void onPressed(int index) {
    setState(() {
      selected = (selected == index ? null : index)!;
    });
  }
}