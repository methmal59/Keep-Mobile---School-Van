import 'package:flutter/material.dart';

class KidModel {
  late String name;
  late int age;
  late String schoolName;
  late String vehicleNumber;
  late String driverName;
  late String driverNumber;
  late String photoPath;
  late AssetImage photo = AssetImage(photoPath);

  KidModel({
    required this.name,
    required this.age,
    required this.schoolName,
    required this.vehicleNumber,
    required this.driverName,
    required this.driverNumber,
    this.photoPath = 'assets/images/dummy_kid_1.png',
  });
}
