import 'package:ebak/Screens/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../components/under_part.dart';
import '../components/upside.dart';
import '../constants.dart';
import '../provider/auth.dart';
import '../widgets/widgets_auth/rounded_button.dart';
import '../widgets/widgets_auth/rounded_input_field.dart';
import '../widgets/widgets_auth/rounded_password_field.dart';

class LoginScreen extends StatelessWidget
{
  static const routeName = '/login-screen';
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: size.width,
          height: size.height,
          child: SingleChildScrollView(
            child: Stack(
              children: [
                const Upside(
                  imgUrl: "assets/images/addtask.jpg",
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 230.0),
                  child: Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        Form(
                          key: _formKey,
                          child: Column(
                            children: [
                              RoundedInputField(hintText: "Email", icon: Icons.email, textController: emailController),
                              RoundedPasswordField(passwordController: passwordController),
                              switchListTile(),
                              RoundedButton(text: 'Se connecter', press: () {
                                Provider.of<Auth>(context, listen: false).login(emailController.text, passwordController.text, context);
                              }),
                              const SizedBox(
                                height: 10,
                              ),
                              UnderPart(
                                title: "Vous n'avez pas de compte ?",
                                navigatorText: "Inscrivez-vous",
                                onTap: () {
                                  Navigator.push(context,
                                    MaterialPageRoute(builder: (context) =>  SignUpScreen())
                                  );
                                },
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              const Text(
                                'Mot de passe oublié?',
                                style: TextStyle(
                                    color: kPrimaryDarkColor,
                                    fontFamily: 'OpenSans',
                                    fontWeight: FontWeight.w600,
                                    fontSize: 13),
                              ),
                              const SizedBox(height: 20,)
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

switchListTile() {
  return Padding(
    padding: const EdgeInsets.only(left: 10, right: 4),
    child: SwitchListTile(
      dense: true,
      title: const Text(
        'Se souvenir de moi',
        style: TextStyle(fontSize: 16, fontFamily: 'OpenSans'),
      ),
      value: true,
      activeColor: kPrimaryDarkColor,
      onChanged: (val) {},
    ),
  );
}

