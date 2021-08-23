import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:keep_mobile/Home/EditVehicles/edit_car.dart';
import 'package:keep_mobile/Models/car_model.dart';
import 'package:show_more_text_popup/show_more_text_popup.dart';

class CarCard extends StatelessWidget {
  GlobalKey key = new GlobalKey();

  final CarModel _car;

  CarCard(this._car);

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.only(top: 12.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => EditCar(_car)),
          );
        },
        child: Card(
          elevation: 5,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          child: Row(
            children: [
              Container(
                  padding: const EdgeInsets.only(left: 12, top: 10, bottom: 10),
                  child: CircleAvatar(
                    radius: 55,
                    backgroundColor: HexColor('#FD8C73'),
                    child: CircleAvatar(
                      radius: 53,
                      backgroundImage: _car.photo,
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
                          _car.name,
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
                      padding:
                          const EdgeInsets.only(right: 15, left: 15, top: 5),
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          _car.vehicleNumber,
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
                              _car.driverName + ' (Driver)',
                              style: TextStyle(
                                fontWeight: FontWeight.w200,
                                fontSize: 13,
                                color: HexColor('#8890A6'),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Align(
                              alignment: Alignment.bottomRight,
                              child: IconButton(
                                icon: Icon(Icons.phone, key: key,),
                                color: HexColor('#8890A6'),
                                onPressed: () {
                                  showMoreText('ACQQ', context);
                                },
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

  void showMoreText(String text, BuildContext context) {
    ShowMoreTextPopup popup = ShowMoreTextPopup(context,
        text: text,
        textStyle: TextStyle(color: Colors.black),
        height: 200,
        width: 100,
        backgroundColor: Color(0xFF16CCCC),
        padding: EdgeInsets.all(4.0),
        borderRadius: BorderRadius.circular(10.0),
        onDismiss: () {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text("Dismiss callback!")));
        }
    );

    /// show the popup for specific widget
    popup.show(
      widgetKey: key,
    );
  }

}


/*
Column(
                                              children: [
                                                Text(
                                                  'Contact Driver',
                                                  style: TextStyle(
                                                      color:
                                                          HexColor('#F58E7E'),
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                Text(
                                                  'Contact Driver',
                                                  style: TextStyle(
                                                    color: HexColor('#8890A6'),
                                                    fontSize: 12,
                                                  ),
                                                ),
                                                Text(
                                                  'Contact Driver',
                                                  style: TextStyle(
                                                    color: HexColor('#8890A6'),
                                                    fontSize: 12,
                                                  ),
                                                ),
                                              ],
                                            ),
 */