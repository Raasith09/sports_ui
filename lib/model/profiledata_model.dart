import 'package:flutter/material.dart';

class ProfileModel {
  final IconData icon;
  final String title;
  final String subTitle;

  ProfileModel(
      {required this.icon, required this.title, required this.subTitle});
}

List<ProfileModel> myProfile = [
  ProfileModel(
      icon: Icons.person, title: "Name", subTitle: "Mohamed Raasith.M"),
  ProfileModel(
      icon: Icons.mail,
      title: "E-mail",
      subTitle: "raasith.flutterdev9@gmail.com"),
  ProfileModel(icon: Icons.phone, title: "Contact", subTitle: "+91-95978****"),
  ProfileModel(
      icon: Icons.location_on,
      title: "Address",
      subTitle: "Chennai,Tamilnadu,India"),
];
