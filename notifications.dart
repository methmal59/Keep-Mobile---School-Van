import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:intl/intl.dart';

import './Models/notification_model.dart';
import 'Models/custom_bottom_app_bar.dart';

class Notifications extends StatefulWidget {
  @override
  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  List<NotificationModel> currentNotifications = [
    NotificationModel('Andrew Smith', 'Mom, I\'m home'),
    NotificationModel('Andew Smith', 'Mom, I\'m in school')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: Text(
          'Notifications',
          style: TextStyle(
            fontWeight: FontWeight.w500,
            color: HexColor('#515C6F'),
            fontSize: 18,
          ),
        ),
        elevation: 0,
      ),
      body: currentNotifications.length < 1
          ? Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'No any notifications',
                    style: TextStyle(
                      fontSize: 12,
                      color: HexColor('#B1B9C2'),
                    ),
                  ),
                ],
              ),
          )
          : SingleChildScrollView(
            child: Container(
                margin: EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  children: [
                    Column(
                        children: currentNotifications.map((_notification) {
                      return Padding(
                        padding: const EdgeInsets.only(top: 15.0),
                        child: Card(
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                            side: new BorderSide(
                              color: HexColor('#FE6D7B'),
                              width: 1.0,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Expanded(
                                      child: Text(
                                        _notification.childName,
                                        style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 11,
                                          color: HexColor('#8890A6'),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Text(
                                          _notification.message,
                                          style: TextStyle(
                                            fontWeight: FontWeight.w300,
                                            fontSize: 11,
                                            color: HexColor('#8890A6'),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    CircleAvatar(
                                      maxRadius: 14,
                                      backgroundColor: HexColor('#FE6D7B'),
                                      child: Icon(
                                        Icons.delete,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 8.0),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Text(
                                          DateFormat('yyyy MMMM dd KK:mma')
                                              .format(_notification.dateTime),
                                          style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 9,
                                            color: HexColor('#B1B9C2'),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    }).toList()),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'Clear All',
                            style: TextStyle(
                              fontSize: 10,
                              color: HexColor('#8890A6'),
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          IconButton(
                            onPressed: (){
                              setState(() {
                                currentNotifications = [];
                              });
                            },
                            icon : Icon(Icons.clear_all),
                            color: HexColor('#8890A6'),
                            iconSize: 35,
                          )
                        ],
                      ),
                    )
                  ],
                ),
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
      bottomNavigationBar: CustomBottomAppBar(2),
    );
  }
}
