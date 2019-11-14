import 'package:flutter/material.dart';

class RegistrationUI extends StatefulWidget {
  @override
  _RegistrationUIState createState() => _RegistrationUIState();
}

class _RegistrationUIState extends State<RegistrationUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.3,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                CircleAvatar(),
                SizedBox(
                  height: 16,
                ),
                Container(
                  color: Colors.blue.shade900,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Column(
                          children: <Widget>[
                            Icon(Icons.camera_alt),
                            Text("Take a picture")
                          ],
                        ),
                      ),
                      Container(
                        width: 5,
                        color: Colors.white,
                      ),
                      Expanded(
                        child: Column(
                          children: <Widget>[
                            Icon(Icons.image),
                            Text("Select picture")
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
