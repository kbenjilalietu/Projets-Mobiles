import 'package:flutter/material.dart';

import '../../constants.dart';


class HeaderSearch extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return  Container(

     padding: const EdgeInsetsDirectional.fromSTEB(0, 20, 0, 10),

     child: Row(
       mainAxisSize: MainAxisSize.max,
       children: [
         Align(
           alignment: const AlignmentDirectional(0, 0),
           child: Padding(
             padding: const EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
             child: Container(
               width: 55,
               height: 50,

               decoration: BoxDecoration(
                   border: Border.all(width: 1, color: kPrimaryDarkColor),
                   borderRadius: const BorderRadius.all(Radius.circular(10)),
               ),
               child: IconButton(
                 hoverColor: const Color(0xA9000000),
                 iconSize: 40,
                 icon: const Icon(
                   Icons.arrow_back_ios_sharp,
                   color: Colors.black,
                   size: 24,
                 ),
                 onPressed: () {
                   print('IconButton pressed ...');
                 },
               ),
             ),
           ),
         ),
         const Padding(
           padding: EdgeInsetsDirectional.fromSTEB(130, 0, 10, 0),
           child: Text(
             'Ahlam2000',
           ),
         ),
         Padding(
             padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 5, 0),
             child: Container(
               width: 50,
               height: 50,
               clipBehavior: Clip.antiAlias,
               decoration: BoxDecoration(
                 border: Border.all(color: kPrimaryDarkColor, width: 1),
                 shape: BoxShape.circle,
                 color: Colors.white,
                 image: DecorationImage(
                   fit: BoxFit.cover,
                   image: AssetImage('assets/images/unnamed.png'),
                 ),
               ),

             )
         ),
       ],
     ),
   );
  }

}