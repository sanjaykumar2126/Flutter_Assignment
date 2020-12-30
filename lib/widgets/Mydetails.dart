import 'package:flutter/material.dart';
import 'package:flutter_app/resource/strings.dart';

class Mydetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      child: Column(
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
                  Icon(Icons.keyboard_arrow_down),
                ],
              ),
              Icon(Icons.add)
            ],
          )
        ],
      ),
    );
  }
}