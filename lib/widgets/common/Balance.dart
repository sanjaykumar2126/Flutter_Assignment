import 'package:flutter/material.dart';

class BalanceCard extends StatelessWidget {
  final String balancetype;
  final String cardimage;
  final String totalvalues;
  final String validity;

  BalanceCard(
      {@required this.balancetype,
      @required this.cardimage,
      @required this.totalvalues,
      @required this.validity});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 176,
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