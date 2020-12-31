  
import 'package:flutter/material.dart';

class Popularott extends StatelessWidget {
  final String image;
  
  Popularott(
      {
      @required this.image,
      });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 270.0,
      width: 140.0,
      margin: EdgeInsets.only(top:20.0,right:5.0),
      padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
                image: new DecorationImage(
                    image: new AssetImage(image),
            alignment: Alignment.topLeft,)),
            
            
          );
    
  }
}