import 'package:flutter/material.dart';

import 'package:hexcolor/hexcolor.dart';
import 'package:keep_mobile/Home/EditVehicles/edit_child.dart';
import 'package:keep_mobile/Models/kid_model.dart';

class ChildCard extends StatefulWidget {
  final KidModel _kid;

  ChildCard(this._kid);

  @override
  _ChildCardState createState() => _ChildCardState();
}

class _ChildCardState extends State<ChildCard> {
  List<Text> users = <Text>[Text('Contact Driver'), Text('081292920')];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12.0),
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          children: [
            Container(
                padding: const EdgeInsets.only(left: 12),
                child: CircleAvatar(
                  radius: 55,
                  backgroundColor: HexColor('#FD8C73'),
                  child: CircleAvatar(
                    radius: 53,
                    backgroundImage: widget._kid.photo,
                  ),
                )),
            Expanded(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        right: 15, top: 12, bottom: 8, left: 8),
                    child: Align(
                      child: Text(
                        widget._kid.name,
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                          color: HexColor('#F58E7E'),
                        ),
                      ),
                      alignment: Alignment.topRight,
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(right: 15, bottom: 8, left: 8),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Text(
                        widget._kid.age.toString() + ' years',
                        style: TextStyle(
                          fontWeight: FontWeight.w200,
                          fontSize: 13,
                          color: HexColor('#F58E7E'),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 15, top: 8, left: 15),
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        widget._kid.schoolName,
                        style: TextStyle(
                          fontWeight: FontWeight.w200,
                          fontSize: 13,
                          color: HexColor('#8890A6'),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 15, left: 15, top: 5),
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        widget._kid.vehicleNumber,
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
                        right: 30, left: 15, bottom: 15, top: 3),
                    child: Row(
                      children: [
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Text(
                            widget._kid.driverName + ' (Driver)',
                            style: TextStyle(
                              fontWeight: FontWeight.w200,
                              fontSize: 13,
                              color: HexColor('#8890A6'),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            width: 30,
                            child: Align(
                              alignment: Alignment.bottomRight,
                              child: IconButton(
                                icon: Icon(
                                  Icons.phone,
                                  color: HexColor('#8890A6'),
                                ), onPressed: () {  },
                              ),
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
    );
  }
}
