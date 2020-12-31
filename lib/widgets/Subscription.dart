import 'package:flutter/material.dart';

class Subscription extends StatelessWidget {
  final String icon;
  final Color colors;
  final String package;
  final String validity;

  Subscription({
    @required this.icon,
    @required this.colors,
    @required this.package,
    @required this.validity,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 270.0,
      width: 140.0,
      margin: EdgeInsets.only(top:20.0,right:20.0),
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: colors,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height:15.0),
          Image.asset(icon),
          SizedBox(height:15.0),
          Container(
            padding: const EdgeInsets.only(bottom: 1.0, top:13.0),
            child: Text(
              package,
              style: TextStyle(
                color: Colors.white,
                fontSize: 14.0,
                letterSpacing: -0.34,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(bottom: 0.0, top: 1),
            child: Text(
              validity,
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
