import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter_app/Providers/logindetailsprovider.dart';
import 'package:flutter_app/screens/Contacts.dart';
import 'package:flutter_app/screens/Dashboard.dart';
import 'package:flutter_app/screens/Home.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_app/themes/themes.dart';
import 'package:flutter_app/widgets/Registeration.dart';
import 'package:provider/provider.dart';
// void main() {
//   runApp(MyApp());
// }
void main() async {//main function
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => Logindetails()),
      ],
    child:MaterialApp(
        theme: Themes.lightTheme, title: 'Flutter task', home: Registeration()));
  }
}

class MyBottomBar extends StatefulWidget {//Bottom Navigation Bar
  @override
  _MyBottomBarState createState() => _MyBottomBarState();
}

class _MyBottomBarState extends State<MyBottomBar> {
  ListQueue<int> _navigationQueue =ListQueue();
  int _currentIndex =0;//find the current page
  final List<Widget> _children=[
    App(),
    Contacts(),
    Dashboard()
  ];//array of pages

  void onTappedBar(int index){
    setState(() {
      _currentIndex = index;
    });

  }
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: ()async{
        if(_navigationQueue.isEmpty)
          return true;
        
        setState(() {
          _currentIndex = _navigationQueue.last;
          _navigationQueue.removeLast();
        });
        return false;
      },
      child:Scaffold(
      body:_children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        // onTap: onTappedBar,
                  onTap: (value) {
            _navigationQueue.addLast(_currentIndex);
            setState(() => _currentIndex = value);
            // print(value);
          },

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
    ));
  }
}
