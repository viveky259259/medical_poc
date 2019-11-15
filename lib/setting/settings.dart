import 'package:flutter/material.dart';

class SettingsUI extends StatefulWidget {
  @override
  _SettingsUIState createState() => _SettingsUIState();
}

class _SettingsUIState extends State<SettingsUI> {
  double sliderValue = 1;
  bool hasSearchByRadius = false;
  bool hasOrderByAscending = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Search by Radius',
                  style: TextStyle(
                      color: Colors.grey.shade700,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                Switch(
                  value: hasSearchByRadius,
                  onChanged: (v) {
                    setState(() {
                      hasSearchByRadius = v;
                    });
                  },
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'DISTANCE',
                  style: TextStyle(
                      color: hasSearchByRadius ? Colors.black : Colors.black38,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "50 Km",
                  style: TextStyle(
                      color: hasSearchByRadius ? Colors.black : Colors.black38,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24),
            child: Row(
              children: <Widget>[
                Text(
                  'Radius',
                  style: TextStyle(
                    color: hasSearchByRadius ? Colors.black : Colors.black26,
                    fontSize: 16,
                  ),
                ),
                SizedBox(
                  width: 16,
                ),
                Expanded(
                  child: Slider(
                    activeColor:
                        hasSearchByRadius ? Colors.black : Colors.black26,
                    inactiveColor:
                        hasSearchByRadius ? Colors.black : Colors.black26,
                    value: sliderValue,
                    max: 1,
                    min: 0,
                    onChanged: (v) {
                      setState(() {
                        sliderValue = v;
                      });
                    },
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              "Order By",
              style: TextStyle(
                  color: Colors.grey.shade700,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("Order By Ascending"),
                Switch(
                  value: hasOrderByAscending,
                  onChanged: (v) {
                    setState(() {
                      hasOrderByAscending = v;
                    });
                  },
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              "Select Language",
              style: TextStyle(
                  color: Colors.grey.shade700,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("English"),
                    ),
                    Icon(
                      Icons.check,
                      color: Colors.green,
                    )
                  ],
                ),
                Divider(
                  color: Colors.black,
                  thickness: 1,
                ),
                Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Arabic"),
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            color: Colors.grey.shade100,
            padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Current Location",
                  style: TextStyle(
                      color: Colors.grey.shade700,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "Surat",
                  style: TextStyle(
                      color: Colors.grey.shade700,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
