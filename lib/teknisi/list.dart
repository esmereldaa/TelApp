import 'dart:io';

import 'package:dtelkom/variable.dart';
import 'package:flutter/material.dart';
import '../data.dart';
import 'detail.dart';
class List extends StatelessWidget {
  const List({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    final appBar = AppBar(
      elevation: 0, title: Text("List Petugas"),
    );
    createTile(Teknisi teknisi) => Hero(
          tag: teknisi.nama,
          child: Column(
            children: <Widget>[
              GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                       builder: (context) => Detaill(size: size, teknisi: teknisi,)
                    ));
                  },
                  child: Container(
                    child: ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                        child: Image.asset(
                          teknisi.gambar,
                          fit: BoxFit.cover,
                        )),
                  )),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute());
                },
                child: Container(
                  padding: EdgeInsets.all(defPadding / 4),
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
                      Text(teknisi.nama,
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
    final grid = CustomScrollView(
      primary: false,
      slivers: <Widget>[
        SliverPadding(
          padding: EdgeInsets.all(16.0),
          sliver: SliverGrid.count(
            childAspectRatio: 2 / 3,
            crossAxisCount: 3,
            mainAxisSpacing: 20.0,
            crossAxisSpacing: 20.0,
            children: teknisii.map((teknisi) => createTile(teknisi)).toList(),
          ),
        )
      ],
    );
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: appBar,
      body: grid,
    );
  }
}

class Detail {
}
