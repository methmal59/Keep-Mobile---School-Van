import 'package:flutter/material.dart';

class CarModel {
  late String name;
  late String vehicleNumber;

  late String driverName;
  late String driverNumber;
  late String photoPath;
  late AssetImage photo = AssetImage(photoPath);

  CarModel({
    required this.name,
    required this.vehicleNumber,
    required this.driverName,
    required this.driverNumber,
    this.photoPath = 'assets/images/dummy_kid_1.png',
  });
}
