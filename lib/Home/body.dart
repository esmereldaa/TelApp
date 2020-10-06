import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:dtelkom/variable.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'header.dart';
import 'news.dart';
import 'package:flutter/services.dart';

class Header extends StatelessWidget{
  @override
  Widget build(BuildContext  context){
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Header_home(size: size),
          News_Menu(size: size),
        ],
      ),
    );
  }
}

