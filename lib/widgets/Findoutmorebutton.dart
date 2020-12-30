import 'package:flutter/material.dart';
class Findoutmore extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsets.all(20.0),
      padding: EdgeInsets.all(5.0),
      decoration: BoxDecoration(
              color: Colors.white70,
              border: Border.all(color: Colors.black),
      borderRadius: BorderRadius.circular(8.0),
                ),
    child:  FlatButton(
  onPressed: () {
  },
  child: Text(
    "Find Out More",style:Theme.of(context).textTheme.subtitle2,
  ),
)
          );
  }
}