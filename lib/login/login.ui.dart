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
                  "LOGIN",
                  style: TextStyle(fontSize: 32, color: Colors.blue,fontWeight: FontWeight.w400),
                ))
              ],
            ),
          ),
          SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(Icons.mail_outline),
                      SizedBox(width: 16),
                      Expanded(
                        child: TextField(
                            decoration: InputDecoration(hintText: "Username")),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 16),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(Icons.lock_outline),
                      SizedBox(width: 16),
                      Expanded(
                        child: TextField(
                            decoration: InputDecoration(hintText: "Password")),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 16),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8))
                    ),
                    padding: EdgeInsets.all(16),
                    child: Text(
                      "Sign In",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    onPressed: () {},
                    color: Colors.blue,
                  ),
                ),
                SizedBox(height: 16),
                RichText(

                  text: TextSpan(children: [
                    TextSpan(
                        text: "Don't have account?",
                        style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
                    TextSpan(text: "   "),
                    TextSpan(
                        text: "Create new one",
                        style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold))
                  ]),
                ),
                SizedBox(height: 16),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.all(Radius.circular(150))),
                  padding: EdgeInsets.all(8),
                  child: Text("OR"),
                ),
                SizedBox(height: 16),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8))
                    ),
                    padding: EdgeInsets.all(16),
                    child: Stack(


//                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Align( alignment: Alignment.centerLeft,
                            child: Icon(Icons.gamepad)),

                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            "Sign In with Google",
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        ),
                      ],
                    ),
                    onPressed: () {},
                    color: Colors.blue,
                  ),
                ),
                SizedBox(height: 24),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8))
                    ),
                    padding: EdgeInsets.all(16),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.gamepad,color: Colors.white,),
                        SizedBox(width: 16,),
                        Text(
                          "Sign In with facebook",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ],
                    ),
                    onPressed: () {},
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
