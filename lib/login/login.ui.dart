import 'package:flutter/material.dart';

class LoginUI extends StatefulWidget {
  @override
  _LoginUIState createState() => _LoginUIState();
}

class _LoginUIState extends State<LoginUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          SizedBox(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.2,
            child: Stack(
              children: <Widget>[
                Opacity(
                    opacity: 0.1, child: Image.asset("assets/instrument.jpg")),
                Center(
                    child: Text(
                  "Login",
                  style: TextStyle(fontSize: 24, color: Colors.blue),
                ))
              ],
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Icon(Icons.mail),
                Expanded(
                  child: TextField(decoration: InputDecoration()),
                ),
              ],
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Icon(Icons.lock),
                Expanded(
                  child: TextField(decoration: InputDecoration()),
                ),
              ],
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: RaisedButton(
              child: Text("Sign In"),
              onPressed: () {},
              color: Colors.blue,
            ),
          ),
          RichText(
            text: TextSpan(children: [
              TextSpan(
                  text: "Don't have account?",
                  style: TextStyle(color: Colors.black)),
              TextSpan(
                  text: "Create new one", style: TextStyle(color: Colors.blue))
            ]),
          ),
          Container(
             decoration: BoxDecoration(
               border: Border.all(color: Colors.black),
               borderRadius: BorderRadius.all(Radius.circular(150))
             ),
            padding: EdgeInsets.all(8),
            child: Text("OR"),

          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: RaisedButton(
              child: Text("Sign In with Google"),
              onPressed: () {},
              color: Colors.blue,
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: RaisedButton(
              child: Text("Sign In with facebook"),
              onPressed: () {},
              color: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }
}
