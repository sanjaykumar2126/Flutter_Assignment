import 'package:flutter/material.dart';
import 'package:flutter_app/screens/Contacts.dart';
import 'package:flutter_app/screens/Dashboard.dart';
import 'package:flutter_app/screens/app.dart';
import 'package:flutter_app/themes/themes.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: Themes.lightTheme, title: 'Flutter task', home: MyBottomBar());
  }
}

class MyBottomBar extends StatefulWidget {
  @override
  _MyBottomBarState createState() => _MyBottomBarState();
}

class _MyBottomBarState extends State<MyBottomBar> {
  int _currentIndex =0;
  final List<Widget> _children=[
    App(),
    Contacts(),
    Dashboard()
  ];

  void onTappedBar(int index){
    setState(() {
      _currentIndex = index;
    });

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:_children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTappedBar,
        currentIndex: _currentIndex,
        items: [
        BottomNavigationBarItem(
          icon: new Icon(Icons.home),
          label:"Home",
        ),
        BottomNavigationBarItem(
          icon: new Icon(Icons.contacts),
          label: "Contacts",
        ),
        BottomNavigationBarItem(
          icon: new Icon(Icons.dashboard),
          label: "Dashboard",
        ),
      ]),
    );
  }
}
