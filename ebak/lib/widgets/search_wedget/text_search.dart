import 'package:flutter/cupertino.dart';

import '../../constants.dart';


class TextSearch extends StatelessWidget
{
  String title;
  TextSearch({Key? key, required this.title }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
      const EdgeInsetsDirectional.fromSTEB(18, 13, 6, 6),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Text(title, style: const TextStyle(
              fontSize: 18,
              fontFamily: 'OpenSans',
              color: kPrimaryDarkColor,
          ),),
        ],
      ),
    );
  }
  
}