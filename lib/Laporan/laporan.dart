import 'dart:io';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';
import 'package:nice_button/nice_button.dart';
import 'package:fluent_appbar/fluent_appbar.dart';
import 'package:flutter/services.dart';

import '../variable.dart';
  
class Laporan extends StatelessWidget {
  const Laporan({
    Key key, this.size,
  }) : super(key: key);
  final Size size;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 0, title: Text("Form Laporan"),),
      body: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: <Widget>[
          Forms(
            title: 'Nama',
          ),
          Forms(
            title: 'No Pelanggan',
          ),
          Forms(
            title: 'Alamat Email',
          ),
          Forms(
            title: 'No Telfon',
          ),
          Container(
          child: Container(margin: EdgeInsets.only(
          left: defPadding,
          top: defPadding ,
          bottom: defPadding ,
          right: defPadding,
          ),
          padding: EdgeInsets.only(
          left: defPadding ,
          top: defPadding * 3 ,
          bottom: defPadding ,
          right: defPadding,
          ),
          height: defPadding * 6 ,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    offset: Offset(0, 2),
                    blurRadius: 20,
                    color: PrimaryColor.withOpacity(0.10))
              ]),
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Laporan Kendala',
              hintStyle: TextStyle(color: textColor.withOpacity(0.5)),
            ),
          ),
        ),
      ),
        ],
      ),
    ),
    );
    
  }
}

  class Forms extends StatelessWidget {
    
  const Forms({
    Key key,
    this.title,
  }) : super(key: key);

  final String  title;


  @override
  Widget build(BuildContext context) {
    return Column(
    children: <Widget>[
      Container(
          child: Container(margin: EdgeInsets.only(
          left: defPadding,
          top: defPadding ,
          bottom: defPadding ,
          right: defPadding,
          ),
          padding: EdgeInsets.symmetric(horizontal: defPadding),
          height: 54,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    offset: Offset(0, 2),
                    blurRadius: 20,
                    color: PrimaryColor.withOpacity(0.10))
              ]),
          child: TextField(
            decoration: InputDecoration(
              hintText: '$title',
              hintStyle: TextStyle(color: textColor.withOpacity(0.5)),
            ),
          ),
        ),
      ),
    ],
  );
    
  }
}
