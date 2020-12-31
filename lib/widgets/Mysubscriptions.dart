import 'package:flutter/material.dart';
import 'package:flutter_app/resource/images.dart';
import 'package:flutter_app/themes/colors.dart';
import 'package:flutter_app/widgets/Subscription.dart';
import 'package:flutter_app/widgets/common/Popularott.dart';

class Mysubscriptions extends StatelessWidget {
  final Shader linearGradient = LinearGradient(
    colors: <Color>[AppColors.COLOR_SAPPHIRE, AppColors.COLOR_LAVENDER_PINK],
  ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(25.0),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('My Subscriptions',
              style: new TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              )),
          SizedBox(height: 12),
          Container(
              // height: 156.0,
              // margin: const EdgeInsets.only(
              // left: 20.0, top: 32.0, right: 20.0, bottom: 0.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                Text(
                  "With remaining 12GB,you can watch 640 min of video",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                      letterSpacing: -0.5,
                      foreground: Paint()..shader = linearGradient),
                )
              ])),
          SizedBox(height: 12),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text('Popular on',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        )),
                    Container(
                        padding: EdgeInsets.only(left: 5.0),
                        child: Image.asset(Images.NETFLIX)),
                  ],
                ),
                Text('View All',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ))
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(bottom: 2.0, top: 2.0),
            height: 180,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Popularott(image: 'images/bitmap-23.png'),
                Popularott(image: 'images/bitmap-25.png'),
                Popularott(image: 'images/bitmap-23.png'),
                Popularott(image: 'images/bitmap-25.png')
              ],
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text('Popular on',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        )),
                    Container(
                        padding:
                            EdgeInsets.only(bottom: 5.0, top: 10.0, left: 5.0),
                        child: Image.asset('images/bitmap-13.png')),
                  ],
                ),
                Text('View All',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ))
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(bottom: 2.0, top: 2.0),
            height: 180,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Popularott(image: 'images/bitmap-23.png'),
                Popularott(image: 'images/bitmap-25.png'),
                Popularott(image: 'images/bitmap-23.png'),
                Popularott(image: 'images/bitmap-25.png')
              ],
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('You might also like',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    )),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(bottom: 2.0, top: 2.0),
            height: 180,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Subscription(
                    icon: 'images/bitmap-15.png',
                    colors: Color(0xFF511158),
                    package: 'Subscribe for',
                    validity: 'P 129.00'),
                Subscription(
                    icon: 'images/bitmap-17.png',
                    colors: Color(0xFF771313),
                    package: 'Subscribe for',
                    validity: 'P 129.00'),
                Subscription(
                    icon: 'images/bitmap-15.png',
                    colors: Color(0xFF511158),
                    package: 'Subscribe for',
                    validity: 'P 129.00'),
                Subscription(
                    icon: 'images/bitmap-17.png',
                    colors: Color(0xFF771313),
                    package: 'Subscribe for',
                    validity: 'P 129.00'),
                
              ],
            ),
          ),
        ],
      ),
    );
  }
}
