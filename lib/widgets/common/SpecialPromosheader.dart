import 'package:flutter/material.dart';
import 'package:flutter_app/themes/colors.dart';
import 'package:flutter_app/widgets/common/Special_Promos.dart';
class SpecialPromos extends StatelessWidget {
  final Shader linearGradient = LinearGradient(
    colors: <Color>[AppColors.COLOR_SAPPHIRE, AppColors.COLOR_LAVENDER_PINK],
  ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));
final String promosheading;

 SpecialPromos(
      {
      @required this.promosheading});
  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 156.0,
      margin: const EdgeInsets.only(
          left: 20.0, top: 32.0, right: 20.0, bottom: 0.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            promosheading,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
                letterSpacing: -0.5,
                foreground: Paint()..shader = linearGradient),
          ),
          SpecialPromosCard(),
        ]
      )
    );
  }
}