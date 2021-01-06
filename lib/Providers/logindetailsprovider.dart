import 'package:flutter/material.dart';

class Logindetails with ChangeNotifier {
  String loginuser; //store login users Email
  set loginuserDetails(newUser) { loginuser = newUser;  notifyListeners();  } //set the user email
  String get loginuserdetails => loginuser; //return user email
}