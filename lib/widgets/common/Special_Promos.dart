import 'package:flutter/material.dart';
import 'package:flutter_app/resource/images.dart';
class SpecialPromosCard extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 170.0,
      width: 370.0,
      margin: EdgeInsets.only(top:20.0),
      padding: EdgeInsets.all(25.0),
            decoration: BoxDecoration(
                image: new DecorationImage(
                    image: new AssetImage(Images.SPECIAL_PROMOS_IMAGE),fit: BoxFit.fill,
            alignment: Alignment.topCenter,)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'GoSakto',
                  style: TextStyle(
                      color: Colors.white, fontSize: 16.0, letterSpacing: 0.16),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 12.0),
                  child: Text(
                    'Create What Matters',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(bottom: 13.0,top:7),
                  child: Text(
                    'Promo that’s all you! ',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14.0,
                      letterSpacing: -0.34,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(bottom: 0.0,top:11),
                  child: Text(
                    'Create your own Promo',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                      letterSpacing: -0.34,
                    ),
                  ),
                ),
              ],
            ),
          );
  }
}