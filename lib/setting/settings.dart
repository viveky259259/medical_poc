import 'package:flutter/material.dart';

class SettingsUI extends StatefulWidget {
  @override
  _SettingsUIState createState() => _SettingsUIState();
}

class _SettingsUIState extends State<SettingsUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
      ),
      body: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Text('Search by Radius'),
              Switch(
                value: false,
                onChanged: (v) {},
              )
            ],
          ),
          Row(
            children: <Widget>[Text('Distance'), Text("50 Km")],
          ),
          Row(
            children: <Widget>[
              Text('Radius'),
              Slider(
                value: 1,
                onChanged: (v) {},
              )
            ],
          ),
          Text("Order By"),
          Row(
            children: <Widget>[
              Text("Order By Ascending"),
              Switch(
                value: false,
                onChanged: (v) {},
              )
            ],
          ),
          Text("Select Language"),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Text("English"),
                  Icon(
                    Icons.check,
                    color: Colors.green,
                  )
                ],
              ),
              Row(
                children: <Widget>[
                  Text("English"),
                ],
              )
            ],
          ),
          Row(
            children: <Widget>[
              Text("Current Location"),
              Text("Surat"),
            ],
          ),
        ],
      ),
    );
  }
}
