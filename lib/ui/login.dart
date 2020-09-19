import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  static String tag = 'login-page';
  @override
  _LoginPageState createState() => new _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {


    final email = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      decoration: InputDecoration(
        hintText: 'Email',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final password = TextFormField(
      autofocus: false,
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Password',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final loginButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        onPressed: () {},
        padding: EdgeInsets.all(12),
        color: Colors.orangeAccent,
        child: Text('Log In', style: TextStyle(color: Colors.white)),
      ),
    );

    final forgotLabel = FlatButton(
      child: Text(
        'Forgot password?',
        style: TextStyle(color: Colors.lightBlueAccent),
      ),
      onPressed: () {},
    );

    final signup = FlatButton(
      child: Text(
        'Sign up an account',
        style: TextStyle(color: Colors.lightBlueAccent),
      ),
      onPressed: () {},
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(

        child: ListView(



          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
        new Text("Login",
          style: new TextStyle(
            color: Colors.black,
            fontSize: 40.0,
            fontWeight:FontWeight.bold

          ),
          textAlign: TextAlign.center,
        ),
            SizedBox(height: 48.0),
            email,
            SizedBox(height: 8.0),
            password,
            SizedBox(height: 24.0),
            loginButton,
            forgotLabel,
            SizedBox(height: 150.0),
            signup
          ],
        ),
      ),
    );
  }
}


/*Column(
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
onPressed: () {},
),
),
],
),*/