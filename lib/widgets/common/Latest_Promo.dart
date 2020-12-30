  
import 'package:flutter/material.dart';

class LatestPromos extends StatelessWidget {
  final String latestpromosIcon;
  final String latestpromosname;
  final String latestpromospackage;
  final String latestpromosvalidity;
  final String latestpromoscardimage;

  LatestPromos(
      {@required this.latestpromosIcon,
      @required this.latestpromosname,
      @required this.latestpromospackage,
      @required this.latestpromosvalidity,
      @required this.latestpromoscardimage,
      });

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 270.0,
      // width: 250.0,
      margin: EdgeInsets.only(top:20.0,left:20.0),
      padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
                image: new DecorationImage(
                    image: new AssetImage(latestpromoscardimage),
            alignment: Alignment.topLeft,)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(latestpromosIcon),
                Container(
                  padding: const EdgeInsets.only(top: 12.0),
                  child: Text(
                    latestpromosname,
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
                    latestpromospackage,
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
                    latestpromosvalidity,
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