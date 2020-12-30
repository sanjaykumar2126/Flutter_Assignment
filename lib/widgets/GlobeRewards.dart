import 'package:flutter/material.dart';
class GlobalRewards extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return  Container(
      // height: 170.0,
      // width: 370.0,
      margin: EdgeInsets.all(20.0),
      padding: EdgeInsets.all(25.0),
            decoration: BoxDecoration(
               gradient: LinearGradient(
      colors: [Colors.orange, Colors.orangeAccent]),
      borderRadius: BorderRadius.circular(8.0),
                ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Your Reward Points',
                  style: TextStyle(
                      color: Colors.white, fontSize: 16.0, letterSpacing: 0.16),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 12.0),
                  child: Text(
                    '7250 Pts',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                
              ],
            ),
          );
  }
}