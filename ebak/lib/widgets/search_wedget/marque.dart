import 'package:ebak/widgets/search_wedget/text_search.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';
import 'models_list.dart';

class Marque extends StatefulWidget{
  const Marque({Key? key}) : super(key: key);

  @override
  State<Marque> createState() => _MarqueState();
}

class _MarqueState extends State<Marque> {
  var marque = "";

  final List<Map<String, dynamic>> _items = [
    {
      'value': 'Ferrari',
      'label': 'https://images-rltl9za45-a-elasri.vercel.app/img/Ferrari-logo.jpg',
    },
    {
      'value': 'Mercedes',
      'label': 'https://images-prj.vercel.app/img/MercedesLogo.jpg',
    },
    {
      'value': 'hyundai',
      'label': 'https://images-prj.vercel.app/img/hyundai-logo.jpeg',
    },
    {
      'value': 'Dacia',
      'label': 'https://images-prj.vercel.app/img/LogoDacia.jpg',
    },
    {
      'value': 'Fiat',
      'label': 'https://images-prj.vercel.app/img/LogoFiat.jpg',
    },
    {
      'value': 'maseratti',
      'label': 'https://images-rltl9za45-a-elasri.vercel.app/img/maseratti-logo.png',
    },
    {
      'value': 'Peugeot',
      'label': 'https://images-prj.vercel.app/img/LogoPeugeot.jpg',
    },
    {
      'value': 'Lamborghini',
      'label': 'https://images-prj.vercel.app/img/Lamborghini-Logo.png',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 7.0),
          height: MediaQuery.of(context).size.height * 0.15,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: _items.length, itemBuilder: (context, index) {
            return SizedBox(
              width: MediaQuery.of(context).size.width * 0.28,
              child: InkWell(
                onTap: (){
                  setState(() {
                    marque = _items[index]["value"];
                  });
                },
                child: Card(
                  elevation: 3,
                  shadowColor: kPrimaryLightColor,
                  color: Colors.white,
                  child: Container(
                    decoration: BoxDecoration(
                        //border: index==3?Border.all(color: secendColor2, width: 3):Border.all(color: Colors.white),
                        //border: index==4?Border.all(color: secendColor2, width: 3):Border.all(color: Colors.white),
                        border: index==6?Border.all(color: secendColor2, width: 3):Border.all(color: Colors.white),
                        borderRadius: const BorderRadius.all(Radius.circular(5))
                    ),
                    child: Center(
                      child: Image.network(_items[index]["label"], width: 70,height: 70,),
                    ),
                  ),
                ),
              ),
            );
          }),
        ),
        TextSearch(title: 'Modèle',),
        ModelList(marque: marque),
      ],
    );
  }
}