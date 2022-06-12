import 'package:flutter/material.dart';
import 'package:select_form_field/select_form_field.dart';

import '../../constants.dart';


class SelectForm extends StatelessWidget{
  List<Map<String, dynamic>> items;
  SelectForm({Key? key, required this.items}) : super(key: key);


  @override
  Widget build(BuildContext context) {
   return Container(
     height: 52,
     margin: const EdgeInsets.fromLTRB(15, 0, 15, 0),
     child: SelectFormField(
       decoration: InputDecoration(
         suffixIcon: const Icon(Icons.arrow_drop_down_circle_outlined),
         border: OutlineInputBorder(
             borderRadius: BorderRadius.circular(5),
             borderSide: const BorderSide(color: secendColor2)),
       ),
       type: SelectFormFieldType.dialog,
       dialogCancelBtn: 'CANCEL',
       enableSearch: true,
       dialogSearchHint: 'Search item',
       dialogTitle: "Modèle",
       hintText: "Modèle",
       items: items,
       onChanged: (val) => print(val),
       onSaved: (val) => print(val),
     ),
   );
  }

}