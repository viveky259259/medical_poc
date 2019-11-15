import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:medical_poc/about_us/about_us.dart';
import 'package:medical_poc/setting/settings.dart';

class DashboardUI extends StatefulWidget {
  @override
  _DashboardUIState createState() => _DashboardUIState();
}

class _DashboardUIState extends State<DashboardUI> {
  List<Model> models = [
    Model(
        Image.asset('assets/medicine-briefcase.png'),
        "DOCTORS",
        "Search "
            "Doctors by their speciality or by city or near by you. You can find "
            "best doctors just one click away"),
    Model(
        Image.asset("assets/hospital-buildings.png"),
        "HOSPITAL",
        "Search "
            "Hospitals by their speciality or by city or near by you. You can find "
            "best hospital just one click away"),
    Model(
        Image.asset('assets/medical-history.png'),
        "CLINICS",
        "Search "
            "Clinics by their speciality or by city or near by you. You can find "
            "best clinics just one click away"),
    Model(
        Image.asset('assets/drugs.png'),
        "PHARMACY",
        "Search "
            "Medicines by their speciality or by city or near by you. You can "
            "find "
            "best medicines just one click away"),
    Model(
        Image.asset('assets/analysis.png'),
        "MEDICAL ANALYSIS",
        "Search "
            "Laboratories by their speciality or by city or near by you. You "
            "can "
            "find "
            "best pharmacy just one click away"),
    Model(
        Image.asset('assets/ambulance.png'),
        "AMBULANCE",
        "Search "
            "Ambulances by their speciality or by city or near by you. You can "
            "find "
            "best Ambulance service just one click away"),
    Model(
        Image.asset('assets/medicine-briefcase.png'),
        "DOCTORS",
        "Search "
            "Doctors by their speciality or by city or near by you. You can find "
            "best doctors just one click away"),
    Model(
        Image.asset("assets/hospital-buildings.png"),
        "HOSPITAL",
        "Search "
            "Hospitals by their speciality or by city or near by you. You can find "
            "best hospital just one click away"),
    Model(
        Image.asset('assets/medical-history.png'),
        "CLINICS",
        "Search "
            "Clinics by their speciality or by city or near by you. You can find "
            "best clinics just one click away"),
    Model(
        Image.asset('assets/drugs.png'),
        "PHARMACY",
        "Search "
            "Medicines by their speciality or by city or near by you. You can "
            "find "
            "best medicines just one click away"),
    Model(
        Image.asset('assets/analysis.png'),
        "MEDICAL ANALYSIS",
        "Search "
            "Laboratories by their speciality or by city or near by you. You "
            "can "
            "find "
            "best pharmacy just one click away"),
    Model(
        Image.asset('assets/ambulance.png'),
        "AMBULANCE",
        "Search "
            "Ambulances by their speciality or by city or near by you. You can "
            "find "
            "best Ambulance service just one click away"),
  ];

  Widget getDrawer() {
    return Drawer(
      child: Container(
        color: Colors.blue,
        child: Column(
          children: <Widget>[
            AppBar(
              leading: IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              title: Text('Home'),
              elevation: 0,
            ),
            SizedBox(
              height: 32,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  backgroundColor: Colors.grey.shade700,
                  radius: 48,
                  child: Icon(
                    FontAwesomeIcons.solidUserCircle,
                    size: 64,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 16,
                ),
                Column(
                  children: <Widget>[
                    Text(
                      'Profile',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Text(
                      'Sign In',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 32,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 32.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(150),
                            ),
                            border: Border.all(color: Colors.white)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            FontAwesomeIcons.home,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Text(
                        "Home",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(150),
                            ),
                            border: Border.all(color: Colors.white)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            FontAwesomeIcons.star,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Text(
                        "Favorites",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (c) => AboutUsUI()));
                    },
                    child: Row(
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(150),
                              ),
                              border: Border.all(color: Colors.white)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(
                              FontAwesomeIcons.infoCircle,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Text(
                          "About Us",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(150),
                            ),
                            border: Border.all(color: Colors.white)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.share,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Text(
                        "Social Sharing",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (c) => SettingsUI()));
                    },
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(150),
                              ),
                              border: Border.all(color: Colors.white)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.settings,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Text(
                          "Setting",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        )
                      ],
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      primary: true,
      appBar: AppBar(
        title: Text(
          'Home',
        ),
      ),
      drawer: getDrawer(),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 148,
                width: 148,
                margin: EdgeInsets.only(top: 16),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.blueGrey),
                    borderRadius: BorderRadius.all(Radius.circular(150)),
                    image:
                        DecorationImage(image: AssetImage("assets/icon.png"))),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                "Find Nearest Health Service",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                "& book your next appointment",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: models.length,
                  shrinkWrap: true,
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      height: 4,
                    );
                  },
                  itemBuilder: (context, index) {
                    Model model = models[index];
                    return Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                            border: Border.all(color: Colors.blue, width: 2)),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 4.0, bottom: 4),
                          child: ListTile(
                            leading: model.image,
                            title: Text(
                              model.text,
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w400),
                            ),
                            subtitle: Text(
                              model.description,
                              style:
                                  TextStyle(fontSize: 16, color: Colors.black),
                            ),
                          ),
                        ));
                  },
                ),
              ),
              SizedBox(
                height: 24,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Model {
  Widget image;
  String text;
  String description;

  Model(this.image, this.text, this.description);
}
