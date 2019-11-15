import 'package:flutter/material.dart';

class AboutUsUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Us'),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 32),
        child: Text(
          "The Libyan Doctor Mobile Application AKA Libyan Health "
          "Listing is a purpose build Directory for health care "
          "and other related professions. Online doctor "
          "appointment scheduling app for patients in one place, "
          "where patient can make a search by name location or "
          "profession appointments, rate or contact doctors using "
          "smart devices and mobile or online. This is truey "
          "automated hybrid mobile application for practices. The "
          "app help Doctors, clinics, Hospitas etc tpo generate an"
          " exclusive accounts which will have all information "
          "from which patient can select and set up appointments "
          "within app itself. The doctors can manage their account"
          " by login to backend accounts fo application see "
          "apppointment and be able to reach and communicate with "
          "patients in realtime. Its a cross based platform means "
          "it is online and iOS and android comaptible",
          style: TextStyle(
              fontSize: 20,
              color: Colors.black,
              fontWeight: FontWeight.w400,
              wordSpacing: 1.3),
        ),
      ),
    );
  }
}
