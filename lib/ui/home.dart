import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:food_app/ui/rest_profile.dart';
import 'package:food_app/ui/search_page.dart';
import 'package:food_app/ui/items.dart';
import 'package:food_app/ui/rest_profile.dart';

class home extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    Widget images_carousel = new Container(
      height: 200.0,
      child: new Carousel(
        boxFit: BoxFit.contain,
        images: [
          AssetImage('images/carlos.jpg'),
          AssetImage('images/carlos.jpg'),
          AssetImage('images/carlos.jpg'),
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
    );

    return Scaffold(
      appBar: new AppBar(

        elevation: 0.1,
        backgroundColor: Colors.orangeAccent,
        title: Text("Restaurants"),
        centerTitle: true,
        actions: <Widget>[
          new IconButton(
              icon: Icon(Icons.search, color: Colors.white),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => search()));
              }),
          new IconButton(
              icon: Icon(Icons.shopping_cart, color: Colors.white),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => profile()));
              }),
        ],
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            // header
            new UserAccountsDrawerHeader(
              accountName: Text("Nashar"),
              accountEmail: Text("nashar@gmail.com"),
              currentAccountPicture: new GestureDetector(
                child: new CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: new Icon(
                    Icons.person_add,
                    color: Colors.white,
                  ),
                ),
              ),
              decoration: new BoxDecoration(color: Colors.orangeAccent),
            ),

            // body
            new InkWell(
              onTap: () {},
              child: new ListTile(
                title: Text("Home Page"),
                leading: Icon(
                  Icons.home,
                  color: Colors.orangeAccent,
                ),
              ),
            ),

            new InkWell(
              onTap: () {},
              child: new ListTile(
                title: Text("My account"),
                leading: Icon(
                  Icons.person,
                  color: Colors.orangeAccent,
                ),
              ),
            ),

            new InkWell(
              onTap: () {},
              child: new ListTile(
                title: Text("My orders"),
                leading: Icon(
                  Icons.shopping_basket,
                  color: Colors.orangeAccent,
                ),
              ),
            ),

            new InkWell(
              onTap: () {},
              child: new ListTile(
                title: Text("Categories"),
                leading: Icon(
                  Icons.dashboard,
                  color: Colors.orangeAccent,
                ),
              ),
            ),

            new InkWell(
              onTap: () {},
              child: new ListTile(
                title: Text("Favourites"),
                leading: Icon(
                  Icons.favorite,
                  color: Colors.orangeAccent,
                ),
              ),
            ),

            new Divider(),

            new InkWell(
              onTap: () {},
              child: new ListTile(
                title: Text("Settings"),
                leading: Icon(Icons.settings),
              ),
            ),

            new InkWell(
              onTap: () {},
              child: new ListTile(
                title: Text("About"),
                leading: Icon(
                  Icons.help,
                  color: Colors.blue,
                ),
              ),
            )
          ],
        ),
      ),
      body: ListView(
        children: <Widget>[
          images_carousel,
          new Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text("Most Popular",
                    style: new TextStyle(
                        color: Colors.black,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold)),
                Expanded(

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[

                      InkWell(
                        child: Text(
                          "See all  ",
                          style: new TextStyle(
                              color: Colors.lightBlueAccent, fontSize: 18.0),
                        ),
                        onTap: () {},
                      ),

                    ],
                  ),
                ),
              ],
            ),
          ),
          new item(),
        ],
      ),
    );
  }
}
