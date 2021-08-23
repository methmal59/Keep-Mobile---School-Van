import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import 'Home/home.dart';

class ChoosePlan extends StatelessWidget {
  Widget showPackageInfo(BuildContext context) {
    return SingleChildScrollView(
      child: AlertDialog(
        title: Center(
          child: Column(
            children: [
              Text(
                'Track My Kid',
                style: TextStyle(
                    fontSize: 26,
                    color: HexColor('#F58E7E'),
                    fontWeight: FontWeight.bold),
              ),
              Text(
                '100% free',
                style: TextStyle(
                  fontSize: 23,
                  color: HexColor('#8890A6'),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
        titlePadding: EdgeInsets.only(top: 15),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        elevation: 16,
        content: Container(
          height: 350,
          child: Column(
            children: [
              Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod',
                style: TextStyle(
                  fontSize: 16,
                  color: HexColor('#515C6F'),
                  fontWeight: FontWeight.w300,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 80,
                width: 150,
                child: ListView(
                  padding: EdgeInsets.all(4),
                  children: [
                    Text('* Lorem ipsum'),
                    Text('* Lorem ipsum'),
                    Text('* Lorem ipsum')
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                style: TextStyle(
                  fontSize: 16,
                  color: HexColor('#515C6F'),
                  fontWeight: FontWeight.w300,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  'Ok',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                  ),
                ),
                style: TextButton.styleFrom(
                  padding: EdgeInsets.fromLTRB(45, 15, 45, 15),
                  backgroundColor: HexColor('#F58E7E'),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    bool isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                HexColor('#FF5B7F'),
                HexColor('#FC9970'),
                HexColor('#FC9970'),
              ],
            ),
          ),
          child: Column(
            children: [
              SizedBox(
                height: isPortrait ? 100 : 60,
              ),
              Text(
                'Choose Your Plan',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              SizedBox(
                height: isPortrait ? 60 : 30,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(33.0, 12, 33, 12),
                child: Card(
                  child: Row(
                    children: [
                      Flexible(
                        flex: 2,
                        child: Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Icon(
                            Icons.face,
                            size: 35,
                          ),
                        ),
                      ),
                      Flexible(
                        fit: FlexFit.tight,
                        flex: 6,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Track My Kid',
                              style: TextStyle(
                                  color: HexColor('#302A3E'),
                                  fontSize: 21,
                                  fontWeight: FontWeight.w700),
                            ),
                            Text(
                              '100% free',
                              style: TextStyle(
                                color: HexColor('#302A3E'),
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Flexible(
                        fit: FlexFit.tight,
                        flex: 1,
                        child: IconButton(
                          icon: Icon(Icons.info),
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (ctx) => showPackageInfo(context),
                            );
                          },
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(33.0, 12, 33, 12),
                child: Card(
                  child: Row(
                    children: [
                      Flexible(
                        flex: 2,
                        child: Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Icon(
                            Icons.local_post_office,
                            size: 35,
                          ),
                        ),
                      ),
                      Flexible(
                        fit: FlexFit.tight,
                        flex: 6,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Track My Fleet',
                              style: TextStyle(
                                  color: HexColor('#302A3E'),
                                  fontSize: 21,
                                  fontWeight: FontWeight.w700),
                            ),
                            Text(
                              'LKR 125/Mo',
                              style: TextStyle(
                                color: HexColor('#302A3E'),
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Flexible(
                        fit: FlexFit.tight,
                        flex: 1,
                        child: IconButton(
                          icon: Icon(Icons.info),
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (ctx) => showPackageInfo(context),
                            );
                          },
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(33.0, 12, 33, 12),
                child: Card(
                  child: Row(
                    children: [
                      Flexible(
                        flex: 2,
                        child: Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Icon(
                            Icons.vpn_key_sharp,
                            size: 35,
                          ),
                        ),
                      ),
                      Flexible(
                        fit: FlexFit.tight,
                        flex: 6,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Track My Car',
                              style: TextStyle(
                                  color: HexColor('#302A3E'),
                                  fontSize: 21,
                                  fontWeight: FontWeight.w700),
                            ),
                            Text(
                              'LKR 125/Mo',
                              style: TextStyle(
                                color: HexColor('#302A3E'),
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Flexible(
                        fit: FlexFit.tight,
                        flex: 1,
                        child: IconButton(
                            icon: Icon(Icons.info),
                            onPressed: () {
                              showDialog(
                                  context: context,
                                  builder: (ctx) => showPackageInfo(context));
                            }),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: isPortrait ? 70 :30,
              ),
              Padding(
                padding: EdgeInsets.only(bottom: isPortrait ? 150 : 50),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Home(),
                      ),
                    );
                  },
                  child: Text(
                    'Next',
                    style: TextStyle(
                      color: HexColor('#F58E7E'),
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                    ),
                  ),
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.fromLTRB(45, 15, 45, 15),
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
