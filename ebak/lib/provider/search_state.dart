import 'package:flutter/cupertino.dart';

class SearchState extends ChangeNotifier
{
  var valueInitialCv=7.0;
  var valueInitialKm=40000.0;
  var valueInitialAnnee=2004.0;
  void changeSliderCv(dynamic value) {
     valueInitialCv = value;
     notifyListeners();
  }
  void changeSliderKm(dynamic value) {
    valueInitialKm = value;
    notifyListeners();
  }
  void changeSliderAnnee(dynamic value) {
    valueInitialAnnee = value;
    notifyListeners();
  }

  void selectMarque(dynamic value){
    valueInitialAnnee = value;
    notifyListeners();
  }



}