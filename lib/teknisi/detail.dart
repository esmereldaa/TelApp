import 'package:flutter/material.dart';
import '../variable.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../data.dart';

final _saved = new Set<Teknisi>();

class Detaill extends StatelessWidget {
  const Detaill({
    Key key,
    @required this.size, this.teknisi,
  }) : super(key: key);
  get alreadySaved => _saved.contains(teknisi);
  final Size size;
  final Teknisi teknisi;

  @override
  Widget build(BuildContext context) {
    final topbody = new Container(
      margin: EdgeInsets.only(bottom: defPadding * 0.5),
          height: size.height * 0.42 ,
          child: Stack(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(
                  left: defPadding,
                  right: defPadding,
                  bottom: 66 + defPadding
                ),
                height: size.height *0.3 - 30 ,
                decoration: BoxDecoration(
                  color: PrimaryColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                  )
                ),
                child: Row(
                  children: <Widget>[
                    Text(
                      this.teknisi.nama + ' | ' + this.teknisi.umur.toString(),
                      style : Theme.of(context).textTheme.headline4.copyWith(
                        color : Colors.white, fontWeight : FontWeight.bold)
                      ),
                      Spacer(),
                      Text(
                      this.teknisi.posisi,
                      style : Theme.of(context).textTheme.headline6.copyWith(
                        color : Colors.white, fontWeight : FontWeight.bold)
                      ),
                  ],
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: defPadding  ),
                  padding: EdgeInsets.symmetric(horizontal: defPadding * 3.2),
                  height: defPadding * 10,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [BoxShadow(
                      offset:  Offset(0, 10),
                      blurRadius: 50,
                      color: PrimaryColor.withOpacity(0.23) 
                    )]
                  ),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Image(
                          image: AssetImage(this.teknisi.gambar),
                          fit: BoxFit.cover,
                        )
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
    );

    final botbody = new Container(
      height: 220.0,
      child: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child:  Center(
          child: Text(
          '${this.teknisi.motto}',
          style: TextStyle(fontSize: 14, height: 1.5),
          textAlign: TextAlign.center,
        ),
        )
      ),
    );

    return Scaffold(
      appBar: AppBar(elevation: 0,),
      body: Column(
        children: <Widget>[
          topbody,botbody
        ],
      ),
    );
  }
}