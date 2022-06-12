
import 'package:carousel_pro/carousel_pro.dart';
import 'package:ebak/pages/pageSearch.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../constants.dart';

void Home() => runApp(PageHome());

class PageHome extends StatefulWidget {
  @override
  MyAppState createState() {
    return new MyAppState();
  }
}

class MyAppState extends State<PageHome> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Welcome to Flutter',
      home: Scaffold(
        backgroundColor:Colors.white,
        body: SafeArea(
          child: Container(
            child: ListView(
              children: <Widget>[
            Container(
              height: 200,
            child: Center(
              child: ListView(
              children: [
              SizedBox(
              height: 200.0,
              width: double.infinity,
              child: Carousel(
                dotSize: 6.0,
                dotSpacing: 15.0,
                dotPosition: DotPosition.bottomCenter,
                images: [
                  Image.asset('assets/images/1.jpeg', fit: BoxFit.cover),
                  Image.asset('assets/images/2.jpg', fit: BoxFit.cover),
                  Image.asset('assets/images/3.jpg', fit: BoxFit.cover),
                  Image.asset('assets/images/4.jpg', fit: BoxFit.cover),
                  Image.asset('assets/images/5.jpg', fit: BoxFit.cover),
                  Image.asset('assets/images/6.jpg', fit: BoxFit.cover),
                ],
              ),
            )
            ],
        )),
    ),
                const SizedBox(
                  height: 15.0,
                ),
                Container(
                  height: 100.0,
                  child: Stack(
                    children: <Widget>[
                      ListView(
                        // This next line does the trick.
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          Buildcircle(
                              'https://images-prj.vercel.app/img/Lamborghini-Logo.png',
                              'Lamborghini'),

                          Buildcircle(
                              'https://images-prj.vercel.app/img/LogoPeugeot.jpg',
                              'Peugeot'),
                          Buildcircle(
                              'https://images-rltl9za45-a-elasri.vercel.app/img/maseratti-logo.png',
                              'Maserati'),
                          Buildcircle(
                              'https://images-prj.vercel.app/img/LogoFiat.jpg',
                              'Fiat'),
                          Buildcircle(
                              'https://images-prj.vercel.app/img/LogoDacia.jpg',
                              'Dacia'),
                          Buildcircle(
                              'https://images-prj.vercel.app/img/hyundai-logo.jpeg',
                              'Hyundai'),
                          Buildcircle(
                              'https://images-prj.vercel.app/img/MercedesLogo.jpg',
                              'Mercedes'),
                          Buildcircle(
                              'https://images-rltl9za45-a-elasri.vercel.app/img/Ferrari-logo.jpg',
                              'Ferrari'),
                        ],
                      ),
                      //gradient in end of list effect
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Opacity(
                            opacity: 0.005,
                            child: RotationTransition(
                              turns: new AlwaysStoppedAnimation(360 / 360),
                              child: Image.network(
                                  'https://images-prj.vercel.app/img/logocitroin.jpg'),//.png
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          const Text(
                            "Suggestion",
                            style: TextStyle(
                                color: Colors.blueGrey,
                                fontSize: 18.0,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.normal),
                          ),
                          const SizedBox(
                            width: 5.0,
                          ),
                          Row(
                            children: <Widget>[
                              InkWell(
                                child: Text("More",
                                  style: TextStyle(
                                      color: secendColor3,
                                      fontSize: 14.0,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.normal),),
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => const PageSearch()),
                                  );
                                },
                              ),
                              // Text(
                              //   "More",
                              //   style: TextStyle(
                              //       color: Colors.blue,
                              //       fontSize: 14.0,
                              //       fontFamily: 'Montserrat',
                              //       fontWeight: FontWeight.normal),
                              //
                              // ),
                              Icon(
                                Icons.keyboard_arrow_right,
                                color: Colors.grey[600],

                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Container(
                        height: 212.0,
                        child: ListView(
                          // This next line does the trick.
                          scrollDirection: Axis.horizontal,
                          children:[
                            Padding(padding: EdgeInsets.only(top: 0),child:Row(
                              children: [
                              Buildcard(
                                  'https://images-prj.vercel.app/img/Hynday.png',
                                  'Hyundai',
                                  '157 500'),
                              const SizedBox(
                                width: 20.0,
                              ),
                              Buildcard(
                                  'https://images-prj.vercel.app/img/mercedece.png',
                                  'Mercedece',
                                  '700 000'),
                              const SizedBox(
                                width: 20.0,
                              ),
                              Buildcard(
                                  'https://images-prj.vercel.app/img/Toyota.png',
                                  'Toyota',
                                  '240 000'),
                              const SizedBox(
                                width: 20.0,
                              ),
                              Buildcard(
                                  'https://images-prj.vercel.app/img/citroen.png',
                                  'Citroen',
                                  '55 000'),
                              const SizedBox(
                                width: 20.0,
                              ),
                              Buildcard(
                                  'https://images-prj.vercel.app/img/clio.png',
                                  'Clio',
                                  '184 900'),
                              const SizedBox(
                                width: 20.0,
                              ),
                            ],)
                            )
                          ]
                        ),
                      ),
                      SizedBox(height: 20.0,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          const Text(
                            "Tendance",
                            style: TextStyle(
                                color: Colors.blueGrey,
                                fontSize: 18.0,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.normal),
                          ),
                          const SizedBox(
                            width: 5.0,
                          ),
                          Row(
                            children: <Widget>[
                              Text(
                                "More",
                                style: TextStyle(
                                    color: secendColor3,
                                    fontSize: 14.0,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.normal),
                              ),
                              Icon(
                                Icons.keyboard_arrow_right,
                                color: Colors.grey[600],
                              ),
                            ],
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(11.0),
                        child: Container(
                          height: 200.0,
                          width: 400.0,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(5.0)),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage('https://images-rltl9za45-a-elasri.vercel.app/img/beauti.jpg')
                            ),
                            boxShadow: <BoxShadow>[
                              BoxShadow(
                                spreadRadius: 10.0,
                                color: Colors.black26,
                                blurRadius: 15.5,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget Buildcard(String _url, String name, String prix) {
  return Container(
    height: 200.0,
    width: 150.0,
    decoration: new BoxDecoration(
      color: Colors.white,
      borderRadius: new BorderRadius.all(Radius.circular(5.0)),
      boxShadow: const <BoxShadow>[
        BoxShadow(
          color: Colors.black12,
          blurRadius: 10,
        ),
      ],
    ),
    child: SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 18.0, top: 18.0, right: 18.0),
            child: Container(
              child: Image.network(_url),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      name,
                      style: TextStyle(
                          color: Color.fromRGBO(28, 33, 46, 1.0),
                          fontSize: 15.0,
                          letterSpacing: 1.0),
                    ),
                  ],
                ),
                SizedBox(
                  height: 8.0,
                ),
                Row(
                  children: <Widget>[

                    Text(
                      prix+" ",
                      style: TextStyle(color: secendColor3, fontSize: 20.0),
                    ),
                    Text(
                      "\d\h",
                      style: TextStyle(color: secendColor3, fontSize: 17.0),
                    ),
                    // Text(
                    //   " / min",
                    //   style: TextStyle(color: Colors.white, fontSize: 10.0),
                    // ),
                  ],
                ),
                SizedBox(
                  height: 7.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      width: 40.0,
                      height: 40.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                            color: secondColor,
                            blurRadius: 4,
                          ),
                        ],
                      ),
                      child: new RawMaterialButton(
                        onPressed: () {},
                        child: new Icon(
                          Icons.keyboard_tab,
                          color: Colors.white,
                          size: 15.0,
                        ),
                        shape: new CircleBorder(),
                        elevation: 2.0,
                        fillColor: secendColor3,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}

Widget Buildcircle(String _url, String name) {
  return Container(
    color: Colors.white,

    width: 100.0,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          decoration: new BoxDecoration(
            borderRadius: new BorderRadius.circular(25.0),
            border:Border.all(width: 1.5,color: kPrimaryDarkColor),
          ),
          height: 65,
          width: 65,
          child: CircleAvatar(
            backgroundColor: Colors.white,

            child: Container(
              width: 50,
              height: 50,
              child: Image.network(_url),
            ),
          ),
        ),
        SizedBox(
          height: 8.0,
        ),
        Text(
          name,
          style: TextStyle(color: Color.fromRGBO(67, 76, 88, 1.0)),
        ),
      ],
    ),
  );
}