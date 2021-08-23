import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:keep_mobile/Home/EditVehicles/edit_fleet.dart';
import '../../Models/fleet_model.dart';


class FleetCard extends StatelessWidget {
  final FleetModel _fleet;

  FleetCard(this._fleet);


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => EditFleet(_fleet)),
          );
        },
        child: Card(
          elevation: 5,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15)),
          child: Row(
            children: [
              Container(
                  padding: const EdgeInsets.only(left: 12),
                  child: CircleAvatar(
                    radius: 55,
                    backgroundColor: HexColor('#FD8C73'),
                    child: CircleAvatar(
                      radius: 53,
                      backgroundImage: _fleet.photo,
                    ),
                  )),
              Expanded(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          right: 15,
                          top: 12,
                          bottom: 8,
                          left: 8),
                      child: Align(
                        child: Text(
                          _fleet.name,
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                            color: HexColor('#F58E7E'),
                          ),
                        ),
                        alignment: Alignment.topRight,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          right: 15, top: 8, left: 15),
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          _fleet.route,
                          style: TextStyle(
                            fontWeight: FontWeight.w200,
                            fontSize: 13,
                            color: HexColor('#8890A6'),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          right: 15, left: 15, top: 5),
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          _fleet.vehicleNumber,
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 13,
                            color: HexColor('#8890A6'),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          right: 30,
                          left: 15,
                          bottom: 15,
                          top: 3),
                      child: Row(
                        children: [
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              _fleet.driverName + ' (Driver)',
                              style: TextStyle(
                                fontWeight: FontWeight.w200,
                                fontSize: 13,
                                color: HexColor('#8890A6'),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Align(
                              alignment:
                              Alignment.bottomRight,
                              child: Icon(
                                Icons.phone,
                                color: HexColor('#8890A6'),
                              ),
                            ),
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
      ),
    );
  }
}
