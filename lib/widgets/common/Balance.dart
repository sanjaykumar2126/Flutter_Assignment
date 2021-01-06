import 'package:flutter/material.dart';

class BalanceCard extends StatelessWidget { //balance card
  final String balancetype;//type
  final String cardimage;//image path
  final String totalvalues; //data
  final String validity;//validity data

  BalanceCard(
      {@required this.balancetype,
      @required this.cardimage,
      @required this.totalvalues,
      @required this.validity});
  @override
  Widget build(BuildContext context) {
    final isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;
    return Container(
      // width: 176,
      width: isLandscape
          ? MediaQuery.of(context).size.width * 0.3
          : MediaQuery.of(context).size.width * 0.4,
          height: isLandscape
          ? MediaQuery.of(context).size.height* 0.5
          : MediaQuery.of(context).size.height* 0.35,
      child: Card(
        margin: const EdgeInsets.only(right:18.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Container(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(cardimage),
                SizedBox(
                  height: 28,
                ),
                Text(
                  balancetype,
                  style: Theme.of(context).textTheme.headline6,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(totalvalues, style: Theme.of(context).textTheme.headline4),
                SizedBox(
                  height: 25,
                ),
                Text(validity, style: Theme.of(context).textTheme.headline6),
              ],
            ),
          ),
        ),
      ),
    );
  }
}