import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/Profile.dart';
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
    child:FlatButton(
          child: Text('Find Out More'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Profile()),
            );
          },
        ),
          );
  }
}