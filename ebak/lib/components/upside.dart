import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../constants.dart';

class Upside extends StatelessWidget {
  const Upside({Key? key, required this.imgUrl}) : super(key: key);
  final String imgUrl;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          width: size.width,
          height: size.height / 2,
          color: kPrimaryColor,
          child: Padding(
            padding: const EdgeInsets.only(top: 0),
            child: Image.asset(
              imgUrl,
              alignment: Alignment.topCenter,
              scale: 8,
              fit: BoxFit.fitWidth
            ),
          ),
        ),
        iconBackButton(context),
      ],
    );
  }
}

iconBackButton(BuildContext context) {
  return IconButton(
    padding: EdgeInsets.fromLTRB(18, 18, 0, 0),
    color: kPrimaryDarkColor,
    iconSize: 34,
    icon: const Icon(CupertinoIcons.arrow_left,),
    onPressed: (){
      Navigator.pop(context);
    },
  );
}
