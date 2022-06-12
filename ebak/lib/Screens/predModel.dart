import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:select_form_field/select_form_field.dart';

import 'package:tflite_flutter/tflite_flutter.dart';


class PredModel extends StatefulWidget {
  @override
  _PredModelState createState() => _PredModelState();
}

class _PredModelState extends State<PredModel> {
  var predValue = "";
  double a = 0;
  double b = 0;
  double f = 0;
  double O = 0;
  double P = 0;
  double m = 0;
  TextEditingController controllernbr = new TextEditingController();
  TextEditingController controllerMileage = new TextEditingController();
  late DateTime _selectedDate = DateTime.now();

  List<Map<String,dynamic>> itemsModel(String brand) {
    print("helloooooo");
    print(brand);
    if(brand== '0.951995') return _itemsModelDacia;
    if(brand=='-1.58666') return _itemsModelHonday;
    return _itemsModelHonday;
  }

  double renormerNbr(TextEditingController controller) {
    return ((double.parse(controller.text) - 7.338304) / 2.230766);
  }

  double renormerM(TextEditingController controller) {
    double renormer = ((double.parse(controller.text) - 127303.815301) /
        100399.756630);
    print("==================>{$renormer}");
    return renormer;
  }

  @override
  void initState() {
    super.initState();
    predValue = "click predict button";
  }

  final List<Map<String, dynamic>> _brand = [
    {
      'value': 0.105777,

      'label': 'Lamborghini',
      'icon': Icon(Icons.stop),
    },
    {
      'value': -0.52889,
      'label': 'Foton',
      'icon': Icon(Icons.fiber_manual_record),
      'textStyle': TextStyle(color: Colors.red),
    },
    {
      'value': -1.63955,
      'label': 'Acrea',
      'enable': false,
      'icon': Icon(Icons.grade),
    },
    {
      'value': 0.475997,
      'label': 'Masey Ferguson',
      'enable': false,
      'icon': Icon(Icons.grade),
    },
    {
      'value': 0.264443,
      'label': 'Lincoln',
      'enable': false,
      'icon': Icon(Icons.grade),
    },
    {
      'value': 0.211554,
      'label': 'Lexus',
      'enable': false,
      'icon': Icon(Icons.grade),
    },
    {
      'value': -1.69243,
      'label': 'AC',
      'enable': false,
      'icon': Icon(Icons.grade),
    },
    {
      'value': 1.586658,
      'label': 'Zotye',
      'enable': false,
      'icon': Icon(Icons.grade),
    },
    {
      'value': -0.68755,
      'label': 'Ferrari',
      'enable': false,
      'icon': Icon(Icons.grade),
    },
    {
      'value': 0.317332,
      'label': 'Pontiac',
      'enable': false,
      'icon': Icon(Icons.grade),
    }, {
      'value': 1.269326,
      'label': 'Mahindra',
      'enable': false,
      'icon': Icon(Icons.grade),
    }, {
      'value': -1.53377,
      'label': 'Subaru',
      'enable': false,
      'icon': Icon(Icons.grade),
    },
    {
      'value': -1.00488,
      'label': 'Aston Martin',
      'enable': false,
      'icon': Icon(Icons.grade),
    },
    {
      'value': -0.476,
      'label': 'Iveco',
      'enable': false,
      'icon': Icon(Icons.grade),
    },
    {
      'value': 0.37022,
      'label': 'Chrysler',
      'enable': false,
      'icon': Icon(Icons.grade),
    },
    {
      'value': -1.42799,
      'label': 'GMC',
      'enable': false,
      'icon': Icon(Icons.grade),
    },
    {
      'value': 1.427992,
      'label': 'Man',
      'enable': false,
      'icon': Icon(Icons.grade),
    },
    {
      'value': -0.42311,
      'label': 'UFO',
      'enable': false,
      'icon': Icon(Icons.grade),
    },
    {
      'value': 0.899106,
      'label': 'Geely',
      'enable': false,
      'icon': Icon(Icons.grade),
    },
    {
      'value': -1.32221,
      'label': 'Porsche',
      'enable': false,
      'icon': Icon(Icons.grade),
    },
    {
      'value': -1.21644,
      'label': 'BYD',
      'enable': false,
      'icon': Icon(Icons.grade),
    },
    {
      'value': -0.74044,
      'label': 'Cadillac',
      'enable': false,
      'icon': Icon(Icons.grade),
    },
    {
      'value': -1.26933,
      'label': 'Dodge',
      'enable': false,
      'icon': Icon(Icons.grade),
    },
    {
      'value': -0.15867,
      'label': 'Bentley',
      'enable': false,
      'icon': Icon(Icons.grade),
    },
    {
      'value': -0.21155,
      'label': 'Isuzu',
      'enable': false,
      'icon': Icon(Icons.grade),
    },
    {
      'value': 0.423109,
      'label': 'Infiniti',
      'enable': false,
      'icon': Icon(Icons.grade),
    },
    {
      'value': 1.163549,
      'label': 'Maserati',
      'enable': false,
      'icon': Icon(Icons.grade),
    },
    {
      'value': 1.692435,
      'label': 'Maserati',
      'enable': false,
      'icon': Icon(Icons.grade),
    },
    {
      'value': -1.16355,
      'label': 'Smart',
      'enable': false,
      'icon': Icon(Icons.grade),
    },
    {
      'value': -1.11066,
      'label': 'mini',
      'enable': false,
      'icon': Icon(Icons.grade),
    },
    {
      'value': -0.79333,
      'label': 'Changhe',
      'enable': false,
      'icon': Icon(Icons.grade),
    },
    {
      'value': 1.11066,
      'label': 'Chery',
      'enable': false,
      'icon': Icon(Icons.grade),
    },
    {
      'value': 1.004883,
      'label': 'Daihatsu',
      'enable': false,
      'icon': Icon(Icons.grade),
    },
    {
      'value': 1.639546,
      'label': 'Skoda',
      'enable': false,
      'icon': Icon(Icons.grade),
    },
    {
      'value': 0.528886,
      'label': 'Rover',
      'enable': false,
      'icon': Icon(Icons.grade),
    },
    {
      'value': 1.057772,
      'label': 'lancia',
      'enable': false,
      'icon': Icon(Icons.grade),
    },
    {
      'value': -1.05777,
      'label': 'Mazda',
      'enable': false,
      'icon': Icon(Icons.grade),
    },
    {
      'value': 0.687552,
      'label': 'Seat',
      'enable': false,
      'icon': Icon(Icons.grade),
    },
    {
      'value': 1.533769,
      'label': 'Chevrolet',
      'enable': false,
      'icon': Icon(Icons.grade),
    },
    {
      'value': 1.375103,
      'label': 'Nissan',
      'enable': false,
      'icon': Icon(Icons.grade),
    },
    {
      'value': 1.216438
      ,
      'label': 'Volvo',
      'enable': false,
      'icon': Icon(Icons.grade),
    },
    {
      'value': -0.05289
      ,
      'label': 'Toyota',
      'enable': false,
      'icon': Icon(Icons.grade),
    },
    {
      'value': 0.74044,
      'label': 'Ssangyong',
      'enable': false,
      'icon': Icon(Icons.grade),
    },
    {
      'value': 1.322215,
      'label': 'Jaguar',
      'enable': false,
      'icon': Icon(Icons.grade),
    },
    {
      'value': -1.48088,
      'label': 'Opel',
      'enable': false,
      'icon': Icon(Icons.grade),
    },
    {
      'value': -0.31733
      ,
      'label': 'Suzuki',
      'enable': false,
      'icon': Icon(Icons.grade),
    },
    {
      'value': -0.58177,
      'label': 'Audi',
      'enable': false,
      'icon': Icon(Icons.grade),
    },
    {
      'value': -0.26444,
      'label': 'Hummer',
      'enable': false,
      'icon': Icon(Icons.grade),
    },
    {
      'value': -0.95199,
      'label': 'Ford',
      'enable': false,
      'icon': Icon(Icons.grade),
    },
    {
      'value': -1.58666,
      'label': 'Hyundai',
      'enable': true,
      'icon': Icon(Icons.grade),
    },
    {
      'value': -0.84622,
      'label': 'Citroen',
      'enable': false,
      'icon': Icon(Icons.grade),
    },
    {
      'value': 0.052889,
      'label': 'Alfa Romeo',
      'enable': false,
      'icon': Icon(Icons.grade),
    },
    {
      'value': -1.3751
      ,
      'label': 'Daewoo',
      'enable': false,
      'icon': Icon(Icons.grade),
    },
    {
      'value': 0.793329
      ,
      'label': 'Kia',
      'enable': false,
      'icon': Icon(Icons.grade),
    },
    {
      'value': 0.37022,
      'label': 'BMW',
      'enable': false,
      'icon': Icon(Icons.grade),
    },
    {
      'value': -0.89911,
      'label': 'Peugeot',
      'enable': false,
      'icon': Icon(Icons.grade),
    },
    {
      'value': 0.634663,
      'label': 'Honda',
      'enable': false,
      'icon': Icon(Icons.grade),
    },
    {
      'value': 0.581774
      ,
      'label': 'Land Rover',
      'enable': false,
      'icon': Icon(Icons.grade),
    },
    {
      'value': 0.951995
      ,
      'label': 'Dacia',
      'enable': true,
      'icon': Icon(Icons.grade),
    },
    {
      'value': 1.48088,
      'label': 'Mitsubishi',
      'enable': false,
      'icon': Icon(Icons.grade),
    },
    {
      'value': -0.63466
      ,
      'label': 'Jeep',
      'enable': false,
      'icon': Icon(Icons.grade),
    },
    {
      'value': -0.10578,
      'label': 'Mercedes-Benz',
      'enable': false,
      'icon': Icon(Icons.grade),
    },
    {
      'value': 0.846217,

      'label': 'Renault',
      'enable': false,
      'icon': Icon(Icons.grade),
    },
    {
      'value': 0.158666,
      'label': 'Volkswagen',
      'enable': false,
      'icon': Icon(Icons.grade),
    },
    {
      'value': 5,
      'label': 'Fiat',
      'enable': true,
      'icon': Icon(Icons.grade),
    },
  ];
  final List<Map<String, dynamic>> _boiteVitesse = [
    {
      'value': 0.367565074311529,
      'label': 'Automatique',
      'enable': true,
      'icon': Icon(Icons.grade),
    },
    {
      'value': -2.7205401823863,
      'label': 'Manuelle',
      'enable': true,
      'icon': Icon(Icons.grade),
    }
  ];

  final List<Map<String, dynamic>> _fuelType = [
    {
      'value': -0.566177,
      'label': 'Diesel',
      'enable': true,
      'icon': Icon(Icons.grade),
    },
    {
      'value': 1.759418,
      'label': 'Essence',
      'enable': true,
      'icon': Icon(Icons.grade),
    }
  ];

  final List<Map<String, dynamic>> _Origine = [
    {
      'value': -1.836312,
      'label': 'Dédouanée',
      'enable': true,
      'icon': Icon(Icons.grade),
    },
    {
      'value': 0.824051,
      'label': 'WW au Maroc',
      'enable': true,
      'icon': Icon(Icons.grade),
    }
  ];

  final List<Map<String, dynamic>> _Premiere_main = [
    {
      'value': 1.391453,
      'label': 'Oui',
      'enable': true,
      'icon': Icon(Icons.grade),
    },
    {
      'value': -0.718655,
      'label': 'Non',
      'enable': true,
      'icon': Icon(Icons.grade),
    }
  ];
  final List<Map<String, dynamic>> _itemsModelDacia = [
    {
      'value': 314,
      'label': 'Dokker',
    },
    {
      'value': 315,
      'label': 'Dokker Van',
    },
    {
      'value': 317,
      'label': 'Duster',
    },
    {
      'value': 464,
      'label': 'Lodgy',
    },
    {
      'value': 465,
      'label': 'Logan',
    }
  ];
  final List<Map<String, dynamic>> _itemsModelHonday = [
    {
      'value': 54,
      'label': '301',
    },
    {
      'value': 132,
      'label': 'Accent',
    },
    {
      'value': 147,
      'label': 'Atos',
    },
    // {
    //   'value': 148,
    //   'label': 'Atos Prime',
    //
    //
    // },
    // {
    //   'value': 157,
    //   'label': 'Azera',
    //
    //
    // }
  ];

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> _itemstest=_itemsModelDacia;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SelectFormField(

              type: SelectFormFieldType.dropdown,
              // or can be dialog
              initialValue: 'circle',
              icon: Icon(Icons.format_shapes),
              labelText: 'Shape',
              items: _fuelType,
              onChanged: (val) => print(" ===============x ${val}"),
              onSaved: (val) => {f = val as double, print(f)},
            ),
            SelectFormField(
              type: SelectFormFieldType.dropdown,
              // or can be dialog
              initialValue: 'circle',
              icon: Icon(Icons.format_shapes),
              labelText: 'Shape',
              items: _brand,
              onChanged: (val) => {print(" ===============x ${val}"), _itemstest=itemsModel(val ),print(_itemstest)},
              onSaved: (val) => {a = val as double, print(a),},
            ),


            SelectFormField(
              type: SelectFormFieldType.dropdown,
              // or can be dialog
              initialValue: 'circle',
              icon: Icon(Icons.format_shapes),
              labelText: 'Shape',
              items: _itemstest,
              onChanged: (val) => print(" ===============x ${val}"),
              onSaved: (val) => {m = val as double, print(m)},
            ),


            SelectFormField(
              type: SelectFormFieldType.dropdown,
              // or can be dialog
              initialValue: 'circle',
              icon: Icon(Icons.format_shapes),
              labelText: 'Shape',
              items: _boiteVitesse,
              onChanged: (val) => print(" ===============x ${val}"),
              onSaved: (val) => {b = val as double, print(b)},
            ),
            SelectFormField(
              type: SelectFormFieldType.dropdown,
              // or can be dialog
              initialValue: 'circle',
              icon: Icon(Icons.format_shapes),
              labelText: 'Shape',
              items: _Origine,
              onChanged: (val) => print(" ===============x ${val}"),
              onSaved: (val) => {O = val as double, print(O)},
            ),
            SelectFormField(
              type: SelectFormFieldType.dropdown,
              // or can be dialog
              initialValue: 'circle',
              icon: Icon(Icons.format_shapes),
              labelText: 'Shape',
              items: _Premiere_main,
              onChanged: (val) => print(" ===============x ${val}"),
              onSaved: (val) => {P = val as double, print(P)},
            ),
            TextField(
              controller: controllerMileage,
              decoration: new InputDecoration(labelText: "Enter your number"),
              keyboardType: TextInputType.number,
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.digitsOnly
              ], // Only numbers can be entered
            ),
            TextFormField(
              onTap: () {
                Container(
                  child: AlertDialog(
                    title: Text("Select Year"),
                    content: Container( // Need to use container to add size constraint.
                      width: 300,
                      height: 300,
                      child: YearPicker(
                        firstDate: DateTime(DateTime
                            .now()
                            .year - 100, 1),
                        lastDate: DateTime(DateTime
                            .now()
                            .year + 100, 1),
                        initialDate: DateTime.now(),
                        // save the selected date to _selectedDate DateTime variable.
                        // It's used to set the previous selected date when
                        // re-showing the dialog.
                        selectedDate: _selectedDate,
                        onChanged: (DateTime dateTime) {
                          // close the dialog when year is selected.
                          Navigator.pop(context);

                          // Do something with the dateTime selected.
                          // Remember that you need to use dateTime.year to get the year
                        },
                      ),
                    ),

                  ),
                );
              },
            ),

            TextField(
              controller: controllernbr,
              decoration: new InputDecoration(labelText: "Enter your number"),
              keyboardType: TextInputType.number,
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.digitsOnly
              ], // Only numbers can be entered
            ),
            Text(
              "change the input values in code to get the prediction",
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 12),
            MaterialButton(
              color: Colors.blue,
              child: Text(
                "predict",
                style: TextStyle(fontSize: 25),
              ),
              onPressed: predData,
            ),
            SizedBox(height: 12),
            Text(
              "Predicted value :  $predValue ",
              style: TextStyle(color: Colors.red, fontSize: 23),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> predData() async {
    final interpreter = await Interpreter.fromAsset('DernierModel.tflite');
    var input = [
      //1->Fuel type |2->Brand  |3->Model	| 4->Boite à vitesse| 5->Origine  |6->Première main
      //7->Sector	|8->Nombre de portes| 9->Mileage|10->Model Year	| 11->Fiscal power
      [-0.565177, 1.553399, 1.772271, 0.367565, -0.949524, -0.718655, -0.583904, 0.847142, -0.994069, 1.147515, -0.59993]
    ];

    var output = List.filled(1, 0).reshape([1, 1]);
    interpreter.run(input, output);
    print(output[0][0]);

    this.setState(() {
      predValue = output[0][0].toString();
    });
  }

}
