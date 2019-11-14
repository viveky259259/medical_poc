import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:grouped_buttons/grouped_buttons.dart';
import 'package:medical_poc/dashboard/dashboard.dart';

class RegistrationUI extends StatefulWidget {
  @override
  _RegistrationUIState createState() => _RegistrationUIState();
}

class _RegistrationUIState extends State<RegistrationUI> {
  bool isNotRobot = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.3,
              child: Stack(
                children: <Widget>[
                  Image.asset(
                    "assets/instrument.jpg",
                    fit: BoxFit.fitWidth,
                    width: double.infinity,
                    height: double.infinity,
                  ),
                  Opacity(
                    opacity: 0.9,
                    child: Container(
                      color: Colors.blue,
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      SizedBox(
                        height: 16,
                      ),
                      CircleAvatar(
                        child: Icon(
                          FontAwesomeIcons.userAlt,
                          size: 48,
                        ),
                        radius: 64,
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Container(
                        color: Colors.blue.shade900,
                        padding: EdgeInsets.all(16),
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              child: Column(
                                children: <Widget>[
                                  Icon(
                                    Icons.camera_alt,
                                    color: Colors.white,
                                  ),
                                  Text("Take a picture",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 16))
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
                                  Icon(
                                    FontAwesomeIcons.images,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    "Select picture",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 16),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: <Widget>[
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Icon(
                          FontAwesomeIcons.userAlt,
                          size: 32,
                          color: Colors.grey,
                        ),
                        SizedBox(width: 16),
                        Expanded(
                          child: TextField(
                              decoration:
                                  InputDecoration(hintText: "Username")),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Icon(
                          Icons.mail_outline,
                          size: 32,
                          color: Colors.grey,
                        ),
                        SizedBox(width: 16),
                        Expanded(
                          child: TextField(
                              decoration:
                                  InputDecoration(hintText: "Mail Address")),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Icon(
                          Icons.lock_outline,
                          size: 32,
                          color: Colors.grey,
                        ),
                        SizedBox(width: 16),
                        Expanded(
                          child: TextField(
                              decoration:
                                  InputDecoration(hintText: "Password")),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 32),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Text("Gender"),
                        RadioButtonGroup(
                            orientation: GroupedButtonsOrientation.HORIZONTAL,
                            itemBuilder: (rb, t, i) {
                              return Row(children: <Widget>[
                                SizedBox(width: 12.0),
                                rb,
                                SizedBox(width: 12.0),
                                t,
                              ]);
                            },
                            labels: ["Female", "Male"])
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 32),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Text("Age"),
                          SizedBox(width: 16),
                          Expanded(
                            child: TextField(
                                decoration: InputDecoration(hintText: "age")),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Checkbox(
                          value: isNotRobot,
                          onChanged: (value) {
                            isNotRobot = value;
                            setState(() {});
                          },
                        ),
                        SizedBox(width: 16),
                        Text('I am not a Robot'),
                      ],
                    ),
                  ),
                  SizedBox(height: 24),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8))),
                      padding: EdgeInsets.all(16),
                      child: Text(
                        "Register",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (c) {
                              return AlertDialog(
                                title: Text("reCaptcha Dialog.."),
                                content: Text("Cool. You seem to be a "
                                    "Human. Now uou can "
                                    "register by clicking "
                                    "the Register button"),
                                actions: <Widget>[
                                  FlatButton(
                                    child: Text("No"),
                                    onPressed: () {},
                                  ),
                                  FlatButton(
                                    child: Text("Yes"),
                                    onPressed: () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (c) => DashboardUI()));
                                    },
                                  ),
                                ],
                              );
                            });
                      },
                      color: Colors.blue.shade900,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
