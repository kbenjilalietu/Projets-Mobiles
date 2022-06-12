import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants.dart';
import '../pages/pageHome.dart';
import '../pages/pageProfil.dart';
import '../pages/pageSearch.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int pageIndex = 0;
  //Create all the pages
  final PageHome _home = PageHome();
  final PageProfil _profil = PageProfil();
  final PageSearch _search = PageSearch();

  Widget _showPage = new PageHome();
  Widget _pageChouser(int page) {
    switch (page) {
      case 0:
        return _home;
        break;
      case 1:
        return _search;
        break;
      case 2:
        return _profil;
        break;
      default:
        return new Container(
          child: new Center(
            child: new Text(
              'No page found by page chooser',
              style: new TextStyle(fontSize: 30),
            ),
          ),
        );
    }
  }

  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: Theme(
          data: Theme.of(context)
              .copyWith(iconTheme: IconThemeData(color: Colors.white)),
          child: CurvedNavigationBar(
            key: _bottomNavigationKey,
            index: pageIndex,
            height: 45.0,
            items: <Widget>[
              Icon(Icons.home, size: 30),
              Icon(Icons.search, size: 30),
              Icon(Icons.perm_identity, size: 30),
            ],
            color: secondColor,
            buttonBackgroundColor: secondColor,
            backgroundColor: Colors.white,
            animationCurve: Curves.easeInOut,
            animationDuration: Duration(milliseconds: 600),
            onTap: (int tappedIndex) {
              setState(() {
                _showPage = _pageChouser(tappedIndex);
              });
            },
            letIndexChange: (index) => true,
          ),
        ),
        body: Container(
          color: Colors.blueAccent,
          child: Center(
            child: _showPage,
          ),
        ));
  }
}
