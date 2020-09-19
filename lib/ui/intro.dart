import 'package:flutter/material.dart';
import 'package:food_app/ui/login.dart';
import 'package:food_app/ui/login_new.dart';
class intro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.orangeAccent,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 0.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: new Icon(
                      Icons.fastfood,
                      color: Colors.white,
                      size: 120,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16.0,right: 16.0,left: 16.0 , bottom: 0.0),
                    child: Text(
                      'Variety of food',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(21.0),
                    child: Text(
                      'Set your location to start exploring \n'
                      'restaurants around you',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 40.0),
                    child: Container(
                      width: 300.0,
                      height: 50.0,
                      child: new RaisedButton(
                        child: new Text("login" , style: new TextStyle(fontSize: 22.0, color: Colors.black),),
                        color: Colors.white,
                        shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(8.0)),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => login_new()),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
