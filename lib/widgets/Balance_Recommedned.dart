import 'package:flutter/material.dart';
import 'package:flutter_app/container/Balancecardcontainer.dart';
// import 'package:flutter_app/resource/images.dart';
import 'package:flutter_app/resource/strings.dart';
import 'package:flutter_app/themes/colors.dart';
// import 'package:flutter_app/widgets/common/Balance.dart';
import 'package:flutter_app/widgets/common/Recommedned.dart';


class Balancecards extends StatelessWidget {
  final Shader linearGradient = LinearGradient(
    colors: <Color>[AppColors.COLOR_DARK_GREY, AppColors.COLOR_SHADE_GREY],
  ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.COLOR_LIGHT_BLUE,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(left: 20, top: 20,bottom: 15),
            child:BalanceDataContainer(),
            // child: Container(
            //   height: 180,
            //   child: ListView(
            //     scrollDirection: Axis.horizontal,
            //     children: [
                  
            //       // BalanceCard(
            //       //     balancetype: Strings.LOAD_BALANCE_NAME,
            //       //     cardimage: Images.LOAD_BALANCE_ICON,
            //       //     totalvalues: 'P 1675.00',
            //       //     validity: Strings.VALID_DATA),
            //       // BalanceCard(
            //       //     balancetype: Strings.DATA_BALANCE_NAME,
            //       //     cardimage: Images.DATA_BALANCE_ICON,
            //       //     totalvalues: '300 MB',
            //       //     validity: Strings.NUMBEROFGB),
            //       // BalanceCard(
            //       //     balancetype: Strings.LOAD_BALANCE_NAME,
            //       //     cardimage: Images.LOAD_BALANCE_ICON,
            //       //     totalvalues: 'P 1675.00',
            //       //     validity: Strings.VALID_DATA),
            //       // BalanceCard(
            //       //     balancetype: Strings.DATA_BALANCE_NAME,
            //       //     cardimage: Images.DATA_BALANCE_ICON,
            //       //     totalvalues: '300 MB',
            //       //     validity: Strings.NUMBEROFGB),
            //       // BalanceCard(
            //       //     balancetype: Strings.LOAD_BALANCE_NAME,
            //       //     cardimage: Images.LOAD_BALANCE_ICON,
            //       //     totalvalues: 'P 1675.00',
            //       //     validity: Strings.VALID_DATA),
            //       // BalanceCard(
            //       //     balancetype: Strings.DATA_BALANCE_NAME,
            //       //     cardimage: Images.DATA_BALANCE_ICON,
            //       //     totalvalues: '300 MB',
            //       //     validity: Strings.NUMBEROFGB),
            //     ],
            //   ),
            // ),
          ),
          Container(
      child: Container(
        padding: const EdgeInsets.only(left: 20.0, top: 20.0,bottom: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Recommended',
                    style: new TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        foreground: Paint()..shader = linearGradient),
                  ),
                  Container(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: Text(
                    'View all',
                    style: new TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                  ),
                  )
                  )
                ],
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              height: 90,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  RecommendedCard(
                    recommendedDayslimited: Strings.RECOMMENDEDDAYS,
                    recommendedModel: Strings.RECOMMENDEDMODEL,
                  ),
                  RecommendedCard(
                    recommendedDayslimited: Strings.RECOMMENDEDDAYS,
                    recommendedModel: Strings.RECOMMENDEDMODEL,
                  ),
                  RecommendedCard(
                    recommendedDayslimited: Strings.RECOMMENDEDDAYS,
                    recommendedModel: Strings.RECOMMENDEDMODEL,
                  ),
                  RecommendedCard(
                    recommendedDayslimited: Strings.RECOMMENDEDDAYS,
                    recommendedModel: Strings.RECOMMENDEDMODEL,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    )
        ],
      ),
    );
  }
}