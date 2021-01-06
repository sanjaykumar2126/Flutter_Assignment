import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/Profile.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   
    return Drawer(
      child: ListView(
        children: <Widget>[
          Row(
            children: [
              Container(
                color:Colors.blue,
                padding: const EdgeInsets.all(10.0),
                child: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: ClipRRect(
                      borderRadius: new BorderRadius.circular(100.0),
                      child: Image.asset(
                        'images/oval-2.png',
                      ),
                    )),
              ),
              
            ],
          ),
          ListTile(  //Navigation to Profile Page
            onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Profile()),
            );
          },
            title: Text("MY Profile"),
          ),
          ],
      ),
    );
  }
}