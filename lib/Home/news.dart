import 'package:dtelkom/Laporan/laporan.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:dtelkom/variable.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../teknisi/list.dart';
import 'package:url_launcher/url_launcher.dart';

class News_Menu extends StatelessWidget {
  const News_Menu({
    Key key, this.size,
  }) : super(key: key);
  final Size size;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: <Widget>[
          Menu(
            image: "assets/img/teknisi.png",
            title: 'TEKNISI KAMI',
            press: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => List(size: size)));
              },
          ),
          Menu(
            image: "assets/img/laporan.png",
            title: 'KIRIM LAPORAN',
            press: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Laporan()));
              },
          ),
          Menu(
            image: "assets/img/lokasi.png",
            title: 'LOKASI KAMI',
            press: () {
               MapUtils.openMap(-6.389722,106.814183);
              },
          ),
          Menu(
            image: "assets/img/informasi.PNG",
            title: 'TENTANG KAMI',
          ),
        ],
      ),
    );
  }
}

class Menu extends StatelessWidget {
  const Menu({
    Key key,
    this.image,
    this.title,
    this.press,
  }) : super(key: key);

  final String image, title;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
        left: defPadding,
        top: defPadding / 2,
        bottom: defPadding * 1.0,
        right: defPadding,
      ),
      width: size.width * 0.8,
      child: Column(
        children: <Widget>[
          GestureDetector(
              onTap: press,
              child: Container(
                    child: ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                        child: Image.asset(
                          image,
                          fit: BoxFit.cover,
                        )),
                  )),
          GestureDetector(
            onTap: press,
            child: Container(
              padding: EdgeInsets.all(defPadding / 2),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: PrimaryColor.withOpacity(0.23))
                ],
              ),
              child: Row(
                children: <Widget>[
                  Spacer(),
                  Text('$title',
                      textAlign: TextAlign.center,
                      style: Theme.of(context)
                          .textTheme
                          .button
                          .copyWith(color: PrimaryColor))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class MapUtils {

  MapUtils._();

  static Future<void> openMap(double latitude, double longitude) async {
    String googleUrl = 'https://www.google.com/maps/search/?api=1&query=$latitude,$longitude';
    if (await canLaunch(googleUrl)) {
      await launch(googleUrl);
    } else {
      throw 'Could not open the map.';
    }
  }
}