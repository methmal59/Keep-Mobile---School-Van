import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:keep_mobile/Models/car_model.dart';
import 'package:keep_mobile/Home/VehicleCards/fleet_card.dart';
import 'package:keep_mobile/Models/fleet_model.dart';

import 'package:keep_mobile/Models/kid_model.dart';
import 'package:keep_mobile/Home/AddVehicles/add_fleet.dart';
import 'package:keep_mobile/Home/AddVehicles/add_my_car.dart';
import '../Models/empty_vehicle_box.dart';
import '../Models/custom_bottom_app_bar.dart';
import 'AddVehicles/add_child.dart';
import 'VehicleCards/car_card.dart';
import 'VehicleCards/child_card.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool myKidClicked = true;
  bool myCarClicked = false;
  bool myFleetClicked = false;

  List registeredFleet = [
    FleetModel(
        name: 'Office - Daily',
        route: 'Malabe - Kollupitiya',
        vehicleNumber: 'ND - 8941',
        driverName: 'Chris',
        driverNumber: '071717171',
        photoPath: 'assets/images/dummy_fleet.png')
  ];
  List registeredCars = [
    CarModel(
        name: 'Benz',
        vehicleNumber: 'CBA - 6006',
        driverName: 'Chris',
        driverNumber: '071717171',
        photoPath: 'assets/images/dummy_my_car_1.png'),
    CarModel(
        name: 'Range Rover',
        vehicleNumber: 'CBA - 7117',
        driverName: 'Chris',
        driverNumber: '071717171',
        photoPath: 'assets/images/dummy_my_car_2.png')
  ];
  List registeredKids = [
    KidModel(
        name: 'Andrew Smith',
        age: 8,
        schoolName: 'School Name',
        vehicleNumber: '56-8941',
        driverName: 'Chris',
        driverNumber: '071717171',
        photoPath: 'assets/images/dummy_kid_1.png'),
    KidModel(
        name: 'Lilly Madison',
        age: 10,
        schoolName: 'School Name',
        vehicleNumber: 'ND-4615',
        driverName: 'Paul',
        driverNumber: '071717171',
        photoPath: 'assets/images/dummy_kid_2.png'),
    KidModel(
        name: 'Rami Malik',
        age: 12,
        schoolName: 'School Name',
        vehicleNumber: 'KV-8922',
        driverName: 'Maya',
        driverNumber: '071713231',
        photoPath: 'assets/images/dummy_kid_3.png'),
  ];

  Widget buildCards() {
    if (myKidClicked) {
      if (registeredKids.length > 0) {
        return Column(
          children: registeredKids.map((_kid) {
            return ChildCard(_kid);
          }).toList(),
        );
      }
      if (registeredKids.length < 1) {
        return EmptyVehicleBox('Add Kid');
      }
    }

    if (myFleetClicked) {
      if (registeredFleet.length > 0) {
        return Column(
          children: registeredFleet.map((_fleet) {
            return FleetCard(_fleet);
          }).toList(),
        );
      }
      if (registeredFleet.length < 1) {
        return EmptyVehicleBox('Add Fleet');
      }
    }
    if (myCarClicked) {
      if (registeredCars.length > 0) {
        return Column(
          children: registeredCars.map((_car) {
            return CarCard(_car);
          }).toList(),
        );
      }
      if (registeredCars.length < 1) {
        return EmptyVehicleBox('Add Car');
      }
    }

    return Text('sad');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Hello Jenny!',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            color: HexColor('#8890A6'),
            onPressed: () {
              if (myKidClicked) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AddChild()),
                );
              }
              if (myFleetClicked) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AddFleet()),
                );
              }
              if (myCarClicked) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AddMyCar()),
                );
              }
            },
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(children: [
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                    elevation: myKidClicked
                        ? MaterialStateProperty.all(10)
                        : MaterialStateProperty.all(0),
                  ),
                  onPressed: () {
                    setState(() {
                      myFleetClicked = false;
                      myKidClicked = true;
                      myCarClicked = false;
                    });
                  },
                  child: Text(
                    'MY KID',
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: HexColor('#F58E7E')),
                  ),
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                    elevation: myFleetClicked
                        ? MaterialStateProperty.all(10)
                        : MaterialStateProperty.all(0),
                  ),
                  onPressed: () {
                    setState(() {
                      myFleetClicked = true;
                      myKidClicked = false;
                      myCarClicked = false;
                    });
                  },
                  child: Text(
                    'MY FLEET',
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: HexColor('#F58E7E')),
                  ),
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                    elevation: myCarClicked
                        ? MaterialStateProperty.all(10)
                        : MaterialStateProperty.all(0),
                  ),
                  onPressed: () {
                    setState(() {
                      myFleetClicked = false;
                      myKidClicked = false;
                      myCarClicked = true;
                    });
                  },
                  child: Text(
                    'MY CAR',
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: HexColor('#F58E7E')),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 400,
              margin: EdgeInsets.only(left: 20, right: 20),
              child: buildCards(),
            ),
          ]),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: HexColor('#F58E7E'),
        child: Icon(
          Icons.location_on,
          size: 45,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: CustomBottomAppBar(0),
    );
  }
}
