import 'dart:io';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';
import 'package:nice_button/nice_button.dart';
import 'package:fluent_appbar/fluent_appbar.dart';

import 'body.dart';

class HomeScreen extends StatelessWidget {     
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: buildAppBar(),
      body: Header(),
    );
    
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0
    );
  }

}