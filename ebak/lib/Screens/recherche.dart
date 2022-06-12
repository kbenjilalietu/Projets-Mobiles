import 'package:flutter/material.dart';

import '../constants.dart';
import '../widgets/search_wedget/accordion.dart';
import '../widgets/search_wedget/button_search.dart';
import '../widgets/search_wedget/header_search.dart';
import '../widgets/search_wedget/lite_rollin_switch.dart';
import '../widgets/search_wedget/marque.dart';
import '../widgets/search_wedget/models_list.dart';
import '../widgets/search_wedget/select_form_search.dart';
import '../widgets/search_wedget/slider_search.dart';
import '../widgets/search_wedget/text_search.dart';
import '../widgets/search_wedget/two_button.dart';

class Recherche extends StatefulWidget
{
  @override
  State<Recherche> createState() => _RechercheState();
}

class _RechercheState extends State<Recherche> {
  int selected1=0;
  int selected2=0;
  int selected3=0;

  final _headerStyle = const TextStyle(
      color: Color(0xffffffff), fontSize: 15, fontWeight: FontWeight.bold);

  String? selectedValue;

  var unmodifiableList = List.unmodifiable([
    "https://images-rltl9za45-a-elasri.vercel.app/img/Ferrari-logo.jpg",
    "https://images-prj.vercel.app/img/MercedesLogo.jpg",
    "https://images-prj.vercel.app/img/hyundai-logo.jpeg",
    "https://images-prj.vercel.app/img/LogoDacia.jpg",
    "https://images-prj.vercel.app/img/LogoFiat.jpg",
    "https://images-rltl9za45-a-elasri.vercel.app/img/maseratti-logo.png",
    "https://images-prj.vercel.app/img/LogoPeugeot.jpg",
    "https://images-prj.vercel.app/img/Lamborghini-Logo.png"]);
  var curburantList = List.unmodifiable(["Diesel", "Essence"]);
  var vitesseList = List.unmodifiable(["Automatique", "Manuelle"]);
  var origineList = List.unmodifiable(["Marocaine", "Dédouanée"]);

  @override
  Widget build(BuildContext context)
  {
    return Container(
      color: Colors.white,
        /*decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage('assets/images/search.jpg',
              ),
            )),*/
        child: SafeArea(
          child: GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    HeaderSearch(),
                    SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(
                        children: [
                          Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                              child: Material(
                                color: Colors.transparent,
                                elevation: 5,
                                shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(0),
                                    bottomRight: Radius.circular(0),
                                    topLeft: Radius.circular(16),
                                    topRight: Radius.circular(16),
                                  ),
                                ),
                                child: Container(
                                  width: double.infinity,
                                  decoration: const BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(0),
                                      bottomRight: Radius.circular(0),
                                      topLeft: Radius.circular(16),
                                      topRight: Radius.circular(16),
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(0, 2, 0, 0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                          const EdgeInsetsDirectional.fromSTEB(0, 12, 0, 5),
                                          child: Container(
                                            width: 50,
                                            height: 4,
                                            decoration: BoxDecoration(
                                              color: const Color(0xFFDBE2E7),
                                              borderRadius: BorderRadius.circular(8),
                                            ),
                                          ),
                                        ),

                                        TextSearch(title: 'Marque',),
                                        Marque(),
                                        const SizedBox(height: 8,),
                                        TextSearch(title: 'Année',),
                                        SliderSearch(min:1990, max:2022, cv: "Annee",),
                                        const SizedBox(height: 8,),
                                        TextSearch(title:"Puissance Fiscale"),
                                        SliderSearch(min:0, max:14, cv: "CV",),
                                        const SizedBox(height: 8,),
                                        TextSearch(title: 'Kilométrage',),
                                        SliderSearch(min:0, max:100000, cv: "KM",),
                                        //TextSearch(title: 'Année',),
                                        const SizedBox(height: 16,),
                                        Card(
                                          elevation: 3,
                                          margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                                          child: Container(
                                            padding: EdgeInsets.symmetric(vertical: 15),
                                            child: Row(
                                              children: [
                                                TextSearch(title: 'Première main',),
                                                SizedBox(width: 50,),
                                                LiteRollingS(),
                                              ],
                                            ),
                                          ),
                                        ),
                                       /* SfDateRangePicker(
                                          view: DateRangePickerView.decade,
                                        ),*/
                                        AccordionPage(title:"Carburant", widget: TwoButton(
                                          onPressed: onPressed1,
                                          selected: selected1,
                                          list: curburantList,
                                        )),
                                        AccordionPage(title:"Boite à vitesse", widget: TwoButton(
                                          onPressed: onPressed2,
                                          selected: selected2,
                                          list: vitesseList,
                                        )),
                                        AccordionPage(title:"Origine", widget: TwoButton(
                                          onPressed: onPressed3,
                                          selected: selected3,
                                          list: origineList,
                                        )),

                                        ButtonSearch(),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ),
    );
  }

  void onPressed1(int index1) {
    setState(() {
      selected1 = (selected1 == index1 ? null : index1)!;
    });
  }
  void onPressed2(int index2) {
    setState(() {
      selected2 = (selected2 == index2 ? null : index2)!;
    });
  }
  void onPressed3(int index3) {
    setState(() {
      selected3 = (selected3 == index3 ? null : index3)!;
    });
  }
}