import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Login/Model/User.dart';

class HomeScreenController extends GetxController {
  late final User? user;
  var scaffoldKey = GlobalKey<ScaffoldState>();
  var argument = Get.arguments;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    user = argument;
  }
}
