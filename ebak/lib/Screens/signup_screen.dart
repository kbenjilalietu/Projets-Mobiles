
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:provider/provider.dart';
import '../components/under_part.dart';
import '../components/upside.dart';
import '../constants.dart';
import '../provider/auth.dart';
import '../widgets/widgets_auth/rounded_button.dart';
import '../widgets/widgets_auth/rounded_input_field.dart';
import '../widgets/widgets_auth/rounded_password_field.dart';
import 'dashboard.dart';
import 'login_screen.dart';

class SignUpScreen extends StatelessWidget {
  static const routeName = '/signup-screen';
  final _formKey = GlobalKey<FormState>();
  TextEditingController usernameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();


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
                  imgUrl: "assets/images/addtask1.jpg",
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
                          child: Column(
                            children: [
                              RoundedInputField(hintText: "Username", icon: Icons.person, textController: usernameController),
                              RoundedInputField(hintText: "Email", icon: Icons.email, textController: emailController),
                              RoundedPasswordField(passwordController: passwordController),
                              RoundedButton(text: "S'inscrire", press: () {
                               Provider.of<Auth>(context, listen: false).signup(usernameController.text,emailController.text, passwordController.text, context);

                              }),
                              const SizedBox(
                                height: 10,
                              ),
                              UnderPart(
                                title: "Vous avez déjà un compte?",
                                navigatorText: " S'identifier",
                                onTap: () {
                                  Navigator.push(context,
                                    MaterialPageRoute(builder: (context) =>  LoginScreen())
                                  );
                                },
                              ),
                              const SizedBox(
                                height: 20,
                              ),
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
