import 'package:flutter/material.dart';
import 'package:flutter_app/themes/colors.dart';

class RecommendedCard extends StatelessWidget {
  final String recommendedModel;
  final String recommendedDayslimited;

  RecommendedCard({
    @required this.recommendedModel,
    @required this.recommendedDayslimited,
  });
  @override
  Widget build(BuildContext context) {
    final isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;
    return Container(
      // width: 188,
      width: isLandscape
          ? MediaQuery.of(context).size.width * 0.35
          : MediaQuery.of(context).size.width * 0.46,
      child: Card(
        color: AppColors.COLOR_BLUE,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Container(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            padding: const EdgeInsets.only(top:5.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  recommendedModel,
                  style: TextStyle(
                    fontSize: 13.0,
                    color: AppColors.COLOR_WHITE,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 9,
                ),
                Text(
                  recommendedDayslimited,
                  style: TextStyle(
                    fontSize: 15.0,
                    color: AppColors.COLOR_WHITE,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}