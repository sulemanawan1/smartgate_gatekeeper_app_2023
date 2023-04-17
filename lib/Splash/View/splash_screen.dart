import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';


import '../../../Services/Shared Preferences/MySharedPreferences.dart';
import '../../Constants/constants.dart';
import '../../Module/Login/Model/User.dart';
import '../../Routes/set_routes.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    getUserSharedPreferencesData();
  }

  void getUserSharedPreferencesData() async {
    User user = await MySharedPreferences.getUserData();
    print(user.bearerToken);
    if (user.bearerToken == "") {
      Timer(Duration(seconds: 3), () => Get.offAndToNamed(loginscreen));
    } else {
      Timer(Duration(seconds: 3),
          () => Get.offAndToNamed(homescreen, arguments: user));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
            child: Image(
          image: AssetImage(logo),
        )),
      ),
    );
  }
}
