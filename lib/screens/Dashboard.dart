import 'package:flutter/material.dart';
class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) { //Simple Dashboard Page
    return Scaffold(
        appBar: AppBar(
          title: Center(child:Text("DashBoard Page",style: TextStyle(color:Colors.blueGrey,fontSize: 30))),
        ),
        

    );
  }
}