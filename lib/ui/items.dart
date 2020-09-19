import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class item extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          item_details(
            name: "Fist item",
            caption: "details",
          ),
          item_details(
            name: "second item",
            caption: "details",
          ),
          item_details(
            name: "third item",
            caption: "details",
          ),
          item_details(
            name: "fourth item",
            caption: "details",
          ),
          item_details(
            name: "fifth item",
            caption: "details",
          ),
        ],
      ),
    );
  }
}

class item_details extends StatelessWidget {
  final String caption;
  final String name;

  item_details({this.name, this.caption});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),),
      width: 150.0,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        borderOnForeground: true,
        child: Hero(
            tag: name,
            child: Column(
              children: <Widget>[
                Flexible(
                  flex: 2,
                  child: Container(
                    //color: Colors.orangeAccent,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20.0),
                            topRight: Radius.circular(20.0)),
                        color: Colors.orangeAccent),
                  ),
                ),
                Flexible(
                    flex: 1,
                    fit: FlexFit.tight,
                    child: Container(
                        //color: Colors.green,
                        child: ListTile(
                          title: Text("mac"),
                          subtitle: Text("fooooood"),
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(20.0),
                                bottomRight: Radius.circular(20.0)),

                            color: Colors.white70)))
              ],
            )),
      ),
    );
  }
}
