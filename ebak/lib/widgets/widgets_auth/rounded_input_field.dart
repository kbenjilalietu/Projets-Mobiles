import 'package:flutter/material.dart';

import '../../constants.dart';
import '../widgets_auth/text_field_container.dart';

class RoundedInputField extends StatelessWidget {
  TextEditingController textController;
  final String? hintText;
  final IconData icon;
  RoundedInputField(
      {Key? key,
      this.hintText,
      this.icon = Icons.person,
      required this.textController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      width: double.infinity,
      padding: const EdgeInsets.only(left: 24, right: 24),
      child: TextFieldContainer(
        child: TextFormField(
            controller: textController,
            cursorColor: kPrimaryDarkColor,
            decoration: InputDecoration(
                icon: Icon(
                  icon,
                  color: kPrimaryDarkColor,
                ),
                hintText: hintText,
                hintStyle: const TextStyle(fontFamily: 'OpenSans'),
                border: InputBorder.none,),
            ),
      ),
    );
  }
}
