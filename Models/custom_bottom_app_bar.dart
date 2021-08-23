import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:keep_mobile/notifications.dart';
import 'package:keep_mobile/settings.dart';
import 'package:keep_mobile/view_profile.dart';

import '../Home/home.dart';
import '../main.dart';  

class CustomBottomAppBar extends StatelessWidget {
  late int _currentScreen;
  late HexColor _homeColor = HexColor('#8890A6');
  late HexColor _accountColor = HexColor('#8890A6');
  late HexColor _notificationsColor = HexColor('#8890A6');
  late HexColor _settingsColor = HexColor('#8890A6');

  CustomBottomAppBar(int currentScreen) {
    this._currentScreen = currentScreen;

    switch (_currentScreen) {
      case 0:
        _homeColor = HexColor('#F58E7E');
        break;
      case 1:
        _accountColor = HexColor('#F58E7E');
        break;
      case 2:
        _notificationsColor = HexColor('#F58E7E');
        break;
      case 3:
        _settingsColor = HexColor('#F58E7E');
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: HexColor('#FFFFFF'),
      elevation: 5,
      shape: CircularNotchedRectangle(),
      notchMargin: 10,
      child: Container(
        height: 75,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              iconSize: 30.0,
              padding: EdgeInsets.only(left: 28.0),
              icon: Icon(
                Icons.home,
                color: _homeColor,
              ),
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => Home()),
                );
              },
              highlightColor: Colors.transparent,
              splashColor: Colors.transparent,
            ),
            IconButton(
              iconSize: 30.0,
              padding: EdgeInsets.only(right: 28.0),
              icon: Icon(
                Icons.account_circle,
                color: _accountColor,
              ),
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => ViewProfile()),
                );
              },
              highlightColor: Colors.transparent,
              splashColor: Colors.transparent,
            ),
            IconButton(
              iconSize: 30.0,
              padding: EdgeInsets.only(left: 28.0),
              icon: Icon(
                Icons.notifications,
                color: _notificationsColor,
              ),
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => Notifications()),
                );
              },
              highlightColor: Colors.transparent,
              splashColor: Colors.transparent,
            ),
            IconButton(
              iconSize: 30.0,
              padding: EdgeInsets.only(right: 28.0),
              icon: Icon(
                Icons.settings,
                color: _settingsColor,
              ),
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => Settings()),
                );
              },
              highlightColor: Colors.transparent,
              splashColor: Colors.transparent,
            )
          ],
        ),
      ),
    );
  }
}
