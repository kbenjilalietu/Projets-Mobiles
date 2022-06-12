import 'package:async_button_builder/async_button_builder.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:tflite_flutter/tflite_flutter.dart';

import '../../constants.dart';


class ButtonSearch extends StatefulWidget{
  @override
  State<ButtonSearch> createState() => _ButtonSearchState();
}

class _ButtonSearchState extends State<ButtonSearch> {
  double predValue = 0.0;
  double prix = 0.0;

  @override
  Widget build(BuildContext context) {
   return Column(
     mainAxisAlignment: MainAxisAlignment.center,
     children: <Widget>[
       //By default
       Column(
         children: [
          // ElevatedButton(onPressed: predData, child: Text("predect")),
           Container(
             padding: EdgeInsets.symmetric(vertical: 30),
             child: AsyncButtonBuilder(
               onSuccess: predData,
               child: Padding(
                 // Value keys are important as otherwise our custom transitions
                 // will have no way to differentiate between children.
                 key: ValueKey('foo'),
                 padding: const EdgeInsets.symmetric(
                   horizontal: 70.0,
                   vertical: 16.0,
                 ),
                 child: Text(
                   'Découverte',
                   style: TextStyle(
                       fontFamily: "OpenSans",
                       fontSize: 23,
                       color: Colors.white),
                 ),
               ),
               loadingWidget: Padding(
                 key: ValueKey('bar'),
                 padding: const EdgeInsets.all(12.0),
                 child: SizedBox(
                   height: 50.0,
                   width: 50.0,
                   child: CircularProgressIndicator(
                     valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                   ),
                 ),
               ),
               successWidget: Padding(
                 key: ValueKey('foobar'),
                 padding: const EdgeInsets.all(20.0),
                 child: Icon(
                   Icons.check,
                   size: 30,
                   color: Colors.white,
                 ),
               ),
               onPressed: () async {
                 await Future.delayed(Duration(seconds: 4));
                 showGeneralDialog(
                     barrierLabel: 'label',
                     barrierDismissible: true,
                     barrierColor: Colors.black.withOpacity(0.5),
                     transitionDuration: Duration(milliseconds: 300),
                     context: context,
                     transitionBuilder: (context, anim1, anim2, child) {
                       return SlideTransition(
                         position: Tween(begin: Offset(0, 1), end: Offset(0, 0))
                             .animate(anim1),
                         child: child,
                       );
                     },
                     pageBuilder: (context, anim1, anim2) {
                       return Align(
                           alignment: Alignment.center,
                           child: Container(
                             height: 370,
                             width: 310,
                             padding:
                             EdgeInsets.symmetric(vertical: 10, horizontal: 2),
                             decoration: BoxDecoration(
                               color: Colors.white,
                               borderRadius: BorderRadius.circular(15),
                             ),
                             child: Material(
                               child: Container(
                                 color: Colors.white,
                                 child: Column(
                                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                     children: [
                                       Row(
                                         mainAxisAlignment:
                                         MainAxisAlignment.spaceBetween,
                                         children: [
                                           SizedBox.shrink(),
                                           IconButton(
                                               icon: Icon(Icons.cancel),
                                               onPressed: () {
                                                 Navigator.pop(context);
                                               })
                                         ],
                                       ),
                                       Container(
                                         width: 240,
                                         height: 240,
                                         child: Lottie.asset(
                                           'assets/lf30_editor_k8m809k7.json',
                                           fit: BoxFit.fill,
                                         ),
                                       ),
                                       Container(
                                         padding: EdgeInsets.only(bottom: 20),
                                         child: Row(
                                           mainAxisAlignment:
                                           MainAxisAlignment.center,
                                           children: [
                                             Expanded(
                                                 child: Text(
                                                "${predValue.round().toString()} DH",
                                                   textAlign: TextAlign.center,
                                                   style: TextStyle(
                                                     fontSize: 34,
                                                     color: secendColor2,
                                                     fontWeight: FontWeight.bold,
                                                   ),
                                                 ))
                                           ],
                                         ),
                                       )
                                     ]),
                               ),
                             ),
                           ));
                     });

               },
               loadingSwitchInCurve: Curves.bounceInOut,
               loadingTransitionBuilder: (child, animation) {
                 return SlideTransition(
                   position: Tween<Offset>(
                     begin: Offset(0, 1.0),
                     end: Offset(0, 0),
                   ).animate(animation),
                   child: child,
                 );
               },
               builder: (context, child, callback, state) {
                 return Material(
                   color: state.maybeWhen(
                     success: () => secendColor2,
                     orElse: () => kPrimaryDarkColor,
                   ),
                   // This prevents the loading indicator showing below the
                   // button
                   clipBehavior: Clip.hardEdge,
                   shape: StadiumBorder(),
                   child: InkWell(
                     child: child,
                     onTap: callback,
                   ),
                 );
               },
             ),
           ),
         ],
       ),
     ],
   );

  }

  Future<void> predData() async {
    final interpreter = await Interpreter.fromAsset('DernierModel.tflite');
    var input = [
      //1->Fuel type |2->Brand  |3->Model	| 4->Boite à vitesse| 5->Origine  |6->Première main
      //7->Sector	|8->Nombre de portes| 9->Mileage|10->Model Year	| 11->Fiscal power

      // Palio // Fiat
      //[-0.566177,0.736731,0.537928,0.367565,0.824051,1.391453,-0.055934,-0.954940,-0.122553,-0.106962,-0.599930],
      //[-0.565177, 1.553399, 1.772271, 0.367565, -0.949524, -0.718655, -0.583904, 0.847142, -0.994069, 1.147515, -0.59993]
      // Partner // Peugeot
      [-0.566177,- 0.954939,-0.217883,0.367565,-1.836312,-0.718655,0.532955,0.847142, 3.712122 ,-2.393465 ,-0.151654]
    ];

    var output = List.filled(1, 0).reshape([1, 1]);
    interpreter.run(input, output);

    this.setState(() {
      predValue = output[0][0];
      prix = predValue;
    });

    print("============> ${predValue}");
  }
}