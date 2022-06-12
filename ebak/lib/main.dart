import 'package:ebak/provider/auth.dart';
import 'package:ebak/provider/search_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import './Screens/signup_screen.dart';
import './Screens/welcome_screen.dart';
import 'Screens/login_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context)=>Auth()),
        ChangeNotifierProvider(create: (context) => SearchState())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: WelcomeScreen(),
        routes: {
          WelcomeScreen.routeName: (context) => WelcomeScreen(),
          SignUpScreen.routeName: (context) => SignUpScreen(),
          LoginScreen.routeName: (context) => LoginScreen(),
        },
      ),
    );
  }
}
