import 'package:flutter/material.dart';
class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Container(
      color: Colors.white,
      child:Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Click here to Go back! to Home Page'),
        ),
      ));
    
  }
}