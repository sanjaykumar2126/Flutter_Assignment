import 'package:flutter/material.dart';
class Contacts extends StatelessWidget {
  @override
  Widget build(BuildContext context) { //Simple Coutacts Page
    return Scaffold(
        appBar: AppBar(
          title: Center(child:Text("Contacts Page",style: TextStyle(color:Colors.blueGrey,fontSize: 30))),
        ),
        

    );
  }
}