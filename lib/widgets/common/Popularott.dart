  
import 'package:flutter/material.dart';

class Popularott extends StatelessWidget {
  final String image;//image path
  
  Popularott(
      {
      @required this.image,
      });

  @override
  Widget build(BuildContext context) {
    final isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;
    return Container(
      // height: 270.0,
      // width: 140.0,
       width: isLandscape
          ? MediaQuery.of(context).size.width * 0.25
          : MediaQuery.of(context).size.width * 0.3,
          height: isLandscape
          ? MediaQuery.of(context).size.height* 0.5
          : MediaQuery.of(context).size.height* 0.35,
      margin: EdgeInsets.only(top:10.0,right:10.0,bottom:10.0),
      padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
                image: new DecorationImage(
                    image: new AssetImage(image),
            alignment: Alignment.topLeft,)),
            
            
          );
    
  }
}