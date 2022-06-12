import 'package:flutter/material.dart';

import '../../constants.dart';

class TwoButton extends StatelessWidget
{
  TwoButton({Key? key, required this.onPressed, required this.selected, required this.list}) : super(key: key);
  final void Function(int selectedIndex) onPressed;
  final int selected;
  var list;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _button(list[0], 0),
          _button(list[1], 1),
        ],
      ),
    );
  }

  Widget _button(String text, int index) {
    return GestureDetector(
      onTap: () => onPressed(index),
      child: Container(
        margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7),
          color: selected == index ? kPrimaryDarkColor : Colors.white,
          border: selected == index ? Border.all(color: Colors.white, width: 2):Border.all(color: kPrimaryDarkColor, width: 2)
        ),
        width: 150,
        height: 50,
        child: Center(
          child: DefaultTextStyle(
            style: TextStyle(
            fontSize: 18,
            color: selected == index ? Colors.white : Colors.black,),
            child: Text(text),
          ),
        ),
      ),
    );
  }
}