import 'package:flutter/material.dart';
import 'package:food_app/ui/signup.dart';
import 'package:food_app/ui/home.dart';
class login_new extends StatefulWidget {
  @override
  _login_newState createState() => _login_newState();
}

class _login_newState extends State<login_new> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      //text at the buttom
      bottomNavigationBar: BottomAppBar(
        color: Colors.transparent,
        child: Padding(
          padding: EdgeInsets.all(30.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Doesn't have an account?  "),
              InkWell(
                child: Text(
                  "Signup",
                  style: new TextStyle(color: Colors.lightBlueAccent,fontSize: 18.0),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => signup()),
                  );
                },
              )
            ],
          ),
        ),
        elevation: 0.0,
      ),
      body: new Center(
        child: SingleChildScrollView(
          padding:
              EdgeInsets.only(left: 24.0, right: 24.0, top: 10.0, bottom: 10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              new Text(
                "Login",
                style: new TextStyle(
                    color: Colors.black,
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 48.0),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                autofocus: false,
                decoration: InputDecoration(
                  hintText: 'Email',
                  contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(32.0)),
                ),
              ),
              SizedBox(height: 8.0),
              TextFormField(
                autofocus: false,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Password',
                  contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(32.0)),
                ),
              ),
              FlatButton(
                child: Text(
                  'Forgot password?',
                  style: TextStyle(color: Colors.lightBlueAccent),
                ),
                onPressed: () {},
              ),
              Container(
                width: 300.0,
                height: 50.0,
                child: new RaisedButton(
                  child: new Text(
                    "login",
                    style: new TextStyle(fontSize: 22.0, color: Colors.black),
                  ),
                  color: Colors.orangeAccent,
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(8.0)),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => home()));
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
