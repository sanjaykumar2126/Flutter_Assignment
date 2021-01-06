import 'package:flutter/material.dart';
import 'package:flutter_app/Providers/logindetailsprovider.dart';
import 'package:flutter_app/resource/strings.dart';
import'package:provider/provider.dart';
class Mydetails extends StatefulWidget {
  @override
  MydetailsState createState() {
    return new MydetailsState();
  }
}

class MydetailsState extends State {
  bool pressed = false;//toggle 
  @override
  Widget build(BuildContext context) {
     var storeDetails = Provider.of<Logindetails>(context);//provider instance
    var email = storeDetails.loginuserdetails;//getting user details
    return Container(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                Strings.MYPLAN,
                style: Theme.of(context).textTheme.subtitle1,
              ),
            ],
          ),
          SizedBox(
            height: 7.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    Strings.PREPAID_NO,
                    style: Theme.of(context).textTheme.subtitle2,
                  ),
                  pressed
                      ? FlatButton(
                          onPressed: () {
                            setState(() {
                              pressed = false;
                            });
                          },
                          child: Icon(Icons.keyboard_arrow_up))
                      : FlatButton(
                          onPressed: () {
                            setState(() {
                              pressed = true;
                            });
                          },
                          child: Icon(Icons.keyboard_arrow_down))
                ],
              ),
              Icon(Icons.add)
            ],
          ),
          pressed
              ? Text(email
                  ,
                  style: Theme.of(context).textTheme.subtitle2,
                )
              : SizedBox(height: 1.0)
        ],
      ),
    );
  }
}
