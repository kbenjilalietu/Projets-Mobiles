import 'package:ebak/Screens/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import '../Screens/dashboard.dart';
import '../Screens/login_screen.dart';
import '../constants.dart';
import '../pages/pageHome.dart';


class Auth extends ChangeNotifier
{
  var resultat;
  void toast(String message, Color color){
    Fluttertoast.showToast(
        msg: message,
        textColor: Colors.black,
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        backgroundColor: color);
  }

  Future<void> signup(String username, String email, String password, BuildContext context) async {
      var res = await http.post(Uri.parse("http://192.168.0.109:8000/adduser"),
          headers: <String, String>{
            'Context-Type': 'application/json;charSet=UTF-8'
          },
          body: <String, String>{
            'username': username,
            'email': email,
            'password': password
          });
      print(res.body);
      //Navigator.push(context, new MaterialPageRoute(builder: (context) => LoginScreen()));
      resultat = json.decode(res.body);
      if (resultat["success"] == true)
      {
        toast(resultat["msg"], kPrimaryLightColor);
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => LoginScreen()));
      } else {
        toast(resultat["msg"], secondColor);
      }
      notifyListeners();
      //Navigator.push(context, new MaterialPageRoute(builder: (context) => Dashboard()));

  }

  Future<void> login(String email, String password, BuildContext context) async {
    var res = await http.post(Uri.parse("http://192.168.0.109:8000/authenticate"),
        headers: <String, String>{
          'Context-Type': 'application/json;charSet=UTF-8'
        },
        body: <String, String>{
          'email': email,
          'password': password
        });
    print(res.body);
    resultat = json.decode(res.body);
    if (resultat["success"] == true) {
      toast("Bien connecté", kPrimaryLightColor);
      Navigator.push(
          context, new MaterialPageRoute(builder: (context) => HomeScreen()));
    } else {
      toast(resultat["msg"], secondColor);
    }
    notifyListeners();
  }
}
