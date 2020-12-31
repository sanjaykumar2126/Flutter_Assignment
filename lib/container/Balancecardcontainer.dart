import 'package:flutter/material.dart';
import 'package:flutter_app/services/BalanceServices.dart';
import 'package:flutter_app/widgets/common/Balance.dart';

class BalanceDataContainer extends StatefulWidget {
  @override
  _BalanceDataContainerState createState() => _BalanceDataContainerState();
}

class _BalanceDataContainerState extends State<BalanceDataContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FutureBuilder(
          future: Services().getBalanceData(context),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Container(
                  height: 180,
                  child: ListView(scrollDirection: Axis.horizontal, children: [
                    for (var index = 0;
                        index < snapshot.data.balance.length;
                        index++)
                      BalanceCard(
                          balancetype: snapshot.data.balance[index].balancetype,
                          cardimage: snapshot.data.balance[index].cardimage,
                          totalvalues: snapshot.data.balance[index].totalvalues,
                          validity: snapshot.data.balance[index].validity)
                  ]));
            } else if (snapshot.hasError) {
              return new Text("${snapshot.error}");
            }
            return new CircularProgressIndicator();
          }),
    );
  }
}