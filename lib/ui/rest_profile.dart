import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:food_app/ui/branch_card.dart';

class profile extends StatefulWidget {
  @override
  _profileState createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orangeAccent,
          elevation: 2.0,
          title: Text("Carlos"),
          centerTitle: true,
        ),
        body: ListView(
          children: <Widget>[
            new Container(
              height: 200.0,
              child: new Carousel(
                boxFit: BoxFit.contain,
                images: [
                  AssetImage('images/carlos.jpg'),
                  AssetImage('images/carlos.jpg'),
                ],
                autoplay: false,
//animationCurve: Curves.fastOutSlowIn,
//animationDuration: Duration(milliseconds: 1000),
//dotSize: 4.0,
//dotVerticalPadding: 8.0,
//indicatorBgPadding: 4.0,
              ),
            ),


            SizedBox(height: 20.0,),
            Container(
              height: 500.0,
              child: branch_card(),
            ),
          ],
        ));
  }
}
