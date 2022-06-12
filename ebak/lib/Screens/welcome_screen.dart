import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
import 'login_screen.dart';
import 'signup_screen.dart';

class WelcomeScreen extends StatelessWidget {
  static const routeName = '/welcome-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/welcome.jpg"),
                  fit: BoxFit.fill),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 6,
                child: Padding(
                  padding: const EdgeInsets.only(top: 75, left: 10),
                  child: Column(
                    children: const [
                      Text(
                        ' Estimer',
                        style: TextStyle(
                            fontSize: 55,
                            fontFamily: "OpenSans",
                            letterSpacing: 1,
                            fontWeight: FontWeight.bold,
                            color: kPrimaryDarkColor),
                      ),
                      Text(
                        'le prix de votre voiture',
                        style: TextStyle(
                            fontSize: 18,
                            color: kPrimaryDarkColor),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Column(
                  children: [
                    Container(
                      height: 80,
                      width: double.infinity,
                      padding:
                          const EdgeInsets.only(top: 25, left: 24, right: 24),
                      child: RaisedButton(
                        onPressed: () => Navigator.of(context)
                            .pushNamed(LoginScreen.routeName),
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                        color: kPrimaryDarkColor,
                        child: Text(
                          'Se connecter',
                          style: TextStyle(
                            fontSize: 20,
                            letterSpacing: 1,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 80,
                      width: double.infinity,
                      padding:
                          const EdgeInsets.only(top: 25, left: 24, right: 24),
                      child: RaisedButton(
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                        color: Colors.white,
                        onPressed: () => Navigator.of(context)
                            .pushNamed(SignUpScreen.routeName),
                        child: Text(
                          'S\'inscrire',
                          style: TextStyle(
                            fontSize: 20,
                            letterSpacing: 1,
                            fontWeight: FontWeight.w700,
                            color: kPrimaryDarkColor,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
