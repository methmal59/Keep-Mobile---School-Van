import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:hexcolor/hexcolor.dart';

import 'Models/custom_bottom_app_bar.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  late bool languageClicked = false;
  late double languageHeight = 60;
  late bool aboutUsClicked = false;
  late double aboutUsHeight = 60;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          'Settings',
          style: TextStyle(
              fontWeight: FontWeight.w500,
              color: HexColor('#515C6F'),
              fontSize: 18),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(left: 20, right: 20, top: 15),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: languageHeight,
                      child: GestureDetector(
                          onTap: () {
                            print('Language tapped');
                            setState(() {
                              if (!languageClicked) {
                                languageHeight = 135;
                                languageClicked = true;
                              } else {
                                languageHeight = 60;
                                languageClicked = false;
                              }
                            });
                          },
                          child: languageClicked
                              ? Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(16.0),
                                    child: Column(
                                      children: [
                                        Column(
                                          children: [
                                            Center(
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'Language',
                                                    style: TextStyle(
                                                        fontWeight: FontWeight.w500,
                                                        color: HexColor('#F58E7E'),
                                                        fontSize: 14),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 24.0,
                                              bottom: 24,
                                              left: 34,
                                              right: 34),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                'සි',
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  color: HexColor('#8890A6'),
                                                ),
                                              ),
                                              ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(5.0),
                                                child: Container(
                                                  height: 30,
                                                  width: 30,
                                                  color: HexColor('#F58E7E'),
                                                  child: Center(
                                                    child: Text(
                                                      'E',
                                                      style: TextStyle(
                                                        fontSize: 20,
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Text(
                                                'அ',
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  color: HexColor('#8890A6'),
                                                ),
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  elevation: 20,
                                )
                              : Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(16.0),
                                    child: Text(
                                      'Language',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          color: HexColor('#8890A6'),
                                          fontSize: 14),
                                    ),
                                  ),
                                  elevation: 20,
                                )),
                    ),
                  ),
                ],
              ),

              //About US

              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Container(
                  height: aboutUsHeight,
                  child: GestureDetector(
                    onTap: () {
                      print('Language tapped');
                      setState(() {
                        if (!aboutUsClicked) {
                          aboutUsHeight = 330;
                          aboutUsClicked = true;
                        } else {
                          aboutUsHeight = 60;
                          aboutUsClicked = false;
                        }
                      });
                    },
                    child: aboutUsClicked ?
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      'About Us',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          color: HexColor('#F58E7E'),
                                          fontSize: 14),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 15),
                                  child: Wrap(
                                    children: [
                                      Text(
                                        'Sample text: The variety of mobile screen sizes and The variety of mobile screen sizes and The variety of mobile screen sizes and'
                                            ' The variety of mobile screen sizes and ',
                                        style: TextStyle(
                                            color: HexColor('#666666'),
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 15.0),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.share,
                                        color: HexColor('#666666'),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 16.0),
                                        child: Text(
                                          'Share App',
                                          style: TextStyle(
                                            fontSize: 8,
                                            fontWeight: FontWeight.w300,
                                            color: HexColor('#666666'),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 15.0),
                                  child: Row(
                                    children: [
                                      Container(
                                        child: CircleAvatar(
                                          maxRadius: 14,
                                          backgroundColor: Colors.white,
                                          child: Icon(
                                            Icons.settings,
                                            color: HexColor('#666666'),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 12.0),
                                        child: Text(
                                          'www.facebook.com/dreamsquad',
                                          style: TextStyle(
                                            fontSize: 8,
                                            fontWeight: FontWeight.w300,
                                            color: HexColor('#666666'),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 15.0),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.android,
                                        color: HexColor('#666666'),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 15.0),
                                        child: Text(
                                          'www.twitter.com/dreamsquad',
                                          style: TextStyle(
                                            fontSize: 8,
                                            fontWeight: FontWeight.w300,
                                            color: HexColor('#666666'),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                          'assets/images/dream_squad_logo.png')
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ) :
                    Row(
                      children: [
                        Expanded(
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Text(
                                'About Us',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: HexColor('#8890A6'),
                                    fontSize: 14),
                              ),
                            ),
                            elevation: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text(
                            'Logout',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: HexColor('#8890A6'),
                                fontSize: 14),
                          ),
                        ),
                        elevation: 20,
                      ),
                    ),
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
      bottomNavigationBar: CustomBottomAppBar(3),
    );
  }
}
