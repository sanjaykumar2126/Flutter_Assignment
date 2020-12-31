import 'package:flutter/material.dart';
import 'package:flutter_app/resource/images.dart';
import 'package:flutter_app/widgets/Balance_Recommedned.dart';
import 'package:flutter_app/widgets/Drawer.dart';
import 'package:flutter_app/widgets/Findoutmorebutton.dart';
import 'package:flutter_app/widgets/GlobeRewards.dart';
import 'package:flutter_app/widgets/Mydetails.dart';
import 'package:flutter_app/widgets/Mysubscriptions.dart';
import 'package:flutter_app/widgets/common/Commonheader.dart';
import 'package:flutter_app/widgets/common/Latest_Promo.dart';
import 'package:flutter_app/widgets/common/SpecialPromosheader.dart';
class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              actions: [
                IconButton(
                  icon: Image.asset(Images.BELL_ICON),
                  onPressed: () {},
                ),
                Container(
                  padding: const EdgeInsets.all(10.0),
                  child: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: ClipRRect(
                        borderRadius: new BorderRadius.circular(100.0),
                        child: Image.asset(
                          Images.PROFILE_PICTURE,
                        ),
                      )),
                ),
              ],
            ),
            drawer: AppDrawer(),
            body: ListView(scrollDirection: Axis.vertical, children: [
              Mydetails(),
              Balancecards(),
              SpecialPromos(promosheading: 'Special Promos',),
              CommonHeader(title: 'Latest Promos'),
              Container(
              height: 180,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  LatestPromos(latestpromosIcon:'images/bitmap-4.png', latestpromosname: 'SpotifyPremium', latestpromospackage: 'Subscribe for', latestpromosvalidity: 'P 129.00', latestpromoscardimage: Images.LATEST_PROMOS_IMAGE),
                  LatestPromos(latestpromosIcon:'images/bitmap-6.png', latestpromosname: 'Facebook Surf', latestpromospackage: 'Subscribe for', latestpromosvalidity: 'P 129.00', latestpromoscardimage: 'images/group-45.png'),
                  LatestPromos(latestpromosIcon:'images/bitmap-4.png', latestpromosname: 'SpotifyPremium', latestpromospackage: 'Subscribe for', latestpromosvalidity: 'P 129.00', latestpromoscardimage: Images.LATEST_PROMOS_IMAGE),
                  LatestPromos(latestpromosIcon:'images/bitmap-6.png', latestpromosname: 'Facebook Surf', latestpromospackage: 'Subscribe for', latestpromosvalidity: 'P 129.00', latestpromoscardimage: Images.LATEST_PROMOS_IMAGE),
                ],
              ),
            ),
              SpecialPromos(promosheading: 'Roaming Plans',),
              CommonHeader(title: 'Globe Rewards'),
              GlobalRewards(),
              Findoutmore(),
              Mysubscriptions(),
            ])
            ));
  }
}