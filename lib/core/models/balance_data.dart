import 'dart:convert';

BalanceCard balanceCardFromJson(String str) => BalanceCard.fromJson(json.decode(str));

String balanceCardToJson(BalanceCard data) => json.encode(data.toJson());

class BalanceCard {
    BalanceCard({
        this.balance,
    });

    List<Balance> balance;

    factory BalanceCard.fromJson(Map<String, dynamic> json) => BalanceCard(
        balance: List<Balance>.from(json["balance"].map((x) => Balance.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "balance": List<dynamic>.from(balance.map((x) => x.toJson())),
    };
}

class Balance {
    Balance({
        this.id,
        this.balancetype,
        this.cardimage,
        this.totalvalues,
        this.validity,
    });

    int id;
    String balancetype;
    String cardimage;
    String totalvalues;
    String validity;

    factory Balance.fromJson(Map<String, dynamic> json) => Balance(
        id: json["id"],
        balancetype: json["balancetype"],
        cardimage: json["cardimage"],
        totalvalues: json["totalvalues"],
        validity: json["validity"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "balancetype": balancetype,
        "cardimage": cardimage,
        "totalvalues": totalvalues,
        "validity": validity,
    };
}
