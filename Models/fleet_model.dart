import 'package:flutter/material.dart';

class FleetModel {
  late String name;
  late String route;
  late String vehicleNumber;

  late String driverName;
  late String driverNumber;
  late String photoPath;
  late AssetImage photo = AssetImage(photoPath);

  FleetModel({
    required this.name,
    required this.route,
    required this.vehicleNumber,
    required this.driverName,
    required this.driverNumber,
    this.photoPath = 'assets/images/dummy_kid_1.png',
  });
}
