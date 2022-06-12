
import 'package:ebak/widgets/widgets_auth/text_field_container.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class RoundedPasswordField extends StatelessWidget {

  TextEditingController passwordController ;
  RoundedPasswordField({ Key? key, required this.passwordController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      width: double.infinity,
      padding: const EdgeInsets.only(left: 24, right: 24),
      child: TextFieldContainer(
        child: TextFormField(
          controller: passwordController,
          obscureText: true,
          cursorColor: kPrimaryColor,
          decoration: const InputDecoration(
              icon: Icon(
                Icons.lock,
                color: kPrimaryDarkColor,
              ),
              hintText: "Password",
              hintStyle:  TextStyle(fontFamily: 'OpenSans'),
              suffixIcon: Icon(
                Icons.visibility,
                color: kPrimaryDarkColor,
              ),
              border: InputBorder.none),
        ),
      ),
    );
  }
}