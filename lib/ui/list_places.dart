import 'package:flutter/material.dart';

class list_pages extends StatefulWidget {
  @override
  _list_pagesState createState() => _list_pagesState();
}

class _list_pagesState extends State<list_pages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 2.0,
        backgroundColor: Colors.orangeAccent,
        title: Text("Restaurants"),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.list),
            onPressed: () {},
          )
        ],
      ),
      body: Container(
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            return makeCard;
          },

        ),
      ),
    );
  }



  final makeCard = Card(
    elevation: 8.0,
    color: Colors.orangeAccent,
    margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
    child: Container(
      decoration: BoxDecoration(color: Colors.orangeAccent,
      borderRadius: BorderRadius.circular(20.0)),
      child: ListTile(
          contentPadding:
              EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          leading: Container(
            padding: EdgeInsets.only(right: 12.0),
            decoration: new BoxDecoration(
                border: new Border(
                    right: new BorderSide(width: 1.0, color: Colors.white24))),
            child: Icon(Icons.fastfood, color: Colors.white),
          ),
          title: Text(
            "awlaaaad 3bdoo",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          // subtitle: Text("Intermediate", style: TextStyle(color: Colors.white)),

          subtitle: Text("khood fe 3ebk w amshii ysta",
              style: TextStyle(color: Colors.white70)),
          trailing: Icon(Icons.keyboard_arrow_right,
              color: Colors.white, size: 30.0)),
    ),
  );
}
