import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/ui/list_places.dart';

class search extends StatefulWidget {
  @override
  _searchState createState() => _searchState();
}

class _searchState extends State<search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.orangeAccent,
          title: Text("filter"),
          centerTitle: true),
      body: Center(
        child: SingleChildScrollView(
          padding:
              EdgeInsets.only(left: 24.0, right: 24.0, top: 10.0, bottom: 10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              new Text(
                "Filter",
                style: new TextStyle(
                    color: Colors.black,
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              new SizedBox(
                height: 20.0,
              ),
              new TextField(
                style: TextStyle(fontSize: 22.0, color: Colors.grey),
                decoration: new InputDecoration(
                  hintText: "What are you looking for ?",
                  prefixIcon: new Container(
                    margin: EdgeInsets.only(bottom: 3.0, top: 3.0),
                    width: 0.025,
                    height: 0.025,
                    decoration: new BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey,
                    ),
                    child: new Icon(
                      Icons.search,
                      color: Colors.white70,
                      size: 20.0,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40.0),
                  ),
                  contentPadding: EdgeInsets.only(left: 10.0, top: 4.0),
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 15.0),
                ),
              ),
              SizedBox(
                height: 40.0,
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Divider(
                      color: Colors.grey,
                    ),
                  ),
                  Text("  Choose Filtter  ",
                      style: new TextStyle(
                        color: Colors.black54,
                        fontSize: 15.0,
                      )),
                  Expanded(
                    child: Divider(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              CheckboxListTile(
                value: true,
                onChanged: (bool val) {},
                title: Text("Restaurant Only",
                    style: new TextStyle(
                      color: Colors.black,
                      fontSize: 17.0,
                      fontWeight: FontWeight.bold
                    )),
                secondary: Icon(
                  Icons.looks_one,
                  color: Colors.orangeAccent,
                ),
              ),



              CheckboxListTile(
                value: true,
                onChanged: (bool val) {},
                title: Text("Cafe Only",
                    style: new TextStyle(
                        color: Colors.black,
                        fontSize: 17.0,
                        fontWeight: FontWeight.bold
                    )),
                secondary: Icon(
                  Icons.looks_two,
                  color: Colors.orangeAccent,
                ),
              ),



              CheckboxListTile(
                value: true,
                onChanged: (bool val) {},
                title: Text("Restaurant and Cafe",
                    style: new TextStyle(
                        color: Colors.black,
                        fontSize: 17.0,
                        fontWeight: FontWeight.bold
                    )),
                secondary: Icon(
                  Icons.looks_3,
                  color: Colors.orangeAccent,
                ),
              ),


              SizedBox(height: 10.0,),

              Row(
                children: <Widget>[
                  Expanded(
                    child: Divider(
                      color: Colors.grey,
                    ),
                  ),
                  Text("  Another Filters  ",
                      style: new TextStyle(
                        color: Colors.black54,
                        fontSize: 15.0,
                      )),
                  Expanded(
                    child: Divider(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),


              SizedBox(height: 35.0,),


              Container(
                width: 300.0,
                height: 50.0,
                child: new RaisedButton(
                  child: new Text(
                    "Apply",
                    style: new TextStyle(fontSize: 22.0, color: Colors.black),
                  ),
                  color: Colors.orangeAccent,
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(8.0)),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => list_pages()));
                  },
                ),
              ),


              SizedBox(height: 25.0,),

              Container(
                width: 300.0,
                height: 50.0,
                child: new RaisedButton(
                  child: new Text(
                    "Cancel",
                    style: new TextStyle(fontSize: 22.0, color: Colors.black),
                  ),
                  color: Colors.grey,
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(8.0)),
                  onPressed: () {},
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
