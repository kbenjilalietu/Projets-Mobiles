import 'package:ebak/widgets/search_wedget/select_form_search.dart';
import 'package:flutter/cupertino.dart';

class ModelList extends StatelessWidget{
  var marque = "";
  final List<Map<String, dynamic>> _itemsDacia = [
    {
      'value': 'Duster',
      'label': 'Duster',
    },
    {
      'value': 'Lodgy',
      'label': 'Lodgy',
    },
    {
      'value': 'Logan',
      'label': 'Logan',
    },
    {
      'value': 'Logan Mcv',
      'label': 'Logan Mcv',
    },
    {
      'value': 'Pick-Up Double Cab',
      'label': 'Pick-Up Double Cab',
    },
    {
      'value': 'Pickup',
      'label': 'Pickup',
    },
    {
      'value': 'Sandero',
      'label': 'Sandero',
    },
    {
      'value': 'Solenza',
      'label': 'Solenza',
    },
  ];

  final List<Map<String, dynamic>> _itemsPeugeot = [
    {
      'value': '206 CC',
      'label': '206 CC',
    },
    {
      'value': '206 SW',
      'label': '206 SW',
    },
    {
      'value': '406 COUPE',
      'label': '406 COUPE',
    },
    {
      'value': 'Expert',
      'label': 'Expert',
    },
    {
      'value': 'J5',
      'label': 'J5',
    },
    {
      'value': 'J9',
      'label': 'J9',
    },
    {
      'value': 'Partner',
      'label': 'Partner',
    },
    {
      'value': 'RCZ',
      'label': 'RCZ',
    },
    {
      'value': 'Rifter',
      'label': 'Rifter',
    },
    {
      'value': 'Tepee',
      'label': 'Tepee',
    },
    {
      'value': 'Traveller',
      'label': 'Traveller',
    },
  ];

  final List<Map<String, dynamic>> _itemsFiat = [
    {
      'value': 'Linea',
      'label': 'Linea',
    },
    {
      'value': 'MAREA',
      'label': 'MAREA',
    },
    {
      'value': 'MULTIPLA',
      'label': 'MULTIPLA',
    },
    {
      'value': 'Palio',
      'label': 'Palio',
    },
    {
      'value': 'Panda',
      'label': 'Panda',
    },
    {
      'value': 'Pinto',
      'label': 'Pinto',
    },
    {
      'value': 'Punto',
      'label': 'Punto',
    },
    {
      'value': 'SEICENTO',
      'label': 'SEICENTO',
    },
    {
      'value': 'Siena',
      'label': 'Siena',
    },
    {
      'value': 'STILO',
      'label': 'STILO',
    },
    {
      'value': 'TEMPRA',
      'label': 'TEMPRA',
    },
    {
      'value': 'TIPO',
      'label': 'TIPO',
    },
    {
      'value': 'ULYSSE',
      'label': 'ULYSSE',
    },
    {
      'value': 'Uno',
      'label': 'Uno',
    },
  ];

  final List<Map<String, dynamic>> _itemsMercedess = [
    {
      'value': '270',
      'label': '270',
    },
    {
      'value': '280',
      'label': '280',
    },
    {
      'value': '300',
      'label': '300',
    },
    {
      'value': '400',
      'label': '400',
    },
    {
      'value': '408',
      'label': '408',
    },
    {
      'value': 'Classe V',
      'label': 'Classe V',
    },
    {
      'value': 'MB',
      'label': 'MB',
    },
    {
      'value': 'ROAD STAR',
      'label': 'ROAD STAR',
    },
    {
      'value': 'Sprinter',
      'label': 'Sprinter',
    },
    {
      'value': 'UTILITAIRE',
      'label': 'UTILITAIRE',
    },
    {
      'value': 'VANEO',
      'label': 'VANEO',
    },
    {
      'value': 'Viano',
      'label': 'Viano',
    },
    {
      'value': 'Vito',
      'label': 'Vito',
    },
    {
      'value': 'Classe GLS',
      'label': 'Classe GLS',
    },
    {
      'value': 'Classe M',
      'label': 'Classe M',
    },
    {
      'value': 'Classe ML',
      'label': 'Classe ML',
    },
    {
      'value': 'Classe R',
      'label': 'Classe R',
    },
    {
      'value': 'Classe S',
      'label': 'Classe S',
    },
    {
      'value': 'Classe SL',
      'label': 'Classe SL',
    },
    {
      'value': 'Classe SLC',
      'label': 'Classe SLC',
    },
  ];

  ModelList({Key? key, required this.marque}) : super(key: key);

  @override
  Widget build(BuildContext context)
  {
    if(marque=="Mercedes") {
      return SelectForm(
        items: _itemsMercedess,
      );
    }
    else if(marque=="Dacia"){
      return SelectForm(
        items: _itemsDacia,
      );
    }
    else if(marque=="Peugeot"){
      return SelectForm(
        items: _itemsPeugeot,
      );
    }
    else{
      return SelectForm(
        items: _itemsFiat,
      );
    }

  }

}