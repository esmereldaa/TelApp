import 'package:flutter/material.dart';
import 'package:dtelkom/variable.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Header_home extends StatelessWidget {
  const Header_home({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 0),
      height: size.height * 0.2,
      child: Stack(
        children: <Widget>[
          Container(
            height: size.height * 0.2 - 27,
            decoration: BoxDecoration(
                color: PrimaryColor,
                ),
            child: Container(
                padding: EdgeInsets.only(
                    left: defPadding,
                    right: defPadding,
                    bottom: 36 + defPadding),
                child: Row(
                  children: <Widget>[
                    Text('Selamat Datang',
                        style: Theme.of(context).textTheme.headline5.copyWith(
                            color: Colors.white, fontWeight: FontWeight.bold)),
                    Spacer(),
                  ],
                )),
          ),
          Positioned(
            top: 70,
            bottom: 20,
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: defPadding),
              height: 74,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)
                  ),
                  ),
            ),
          )
        ],
      ),
    );
  }
}
