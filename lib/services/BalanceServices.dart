import 'dart:convert';

import 'dart:async' show Future;
import 'package:flutter/cupertino.dart';
import 'package:flutter_app/core/models/balance_data.dart';

class Services {
  Future<BalanceCard> getBalanceData(BuildContext context) async {
    String jsonString =
        await DefaultAssetBundle.of(context).loadString('mock/balance.json');
    Map Balance_Value = jsonDecode(jsonString);
    final Balance_Array = BalanceCard.fromJson(Balance_Value);
    return Balance_Array;
  }
}