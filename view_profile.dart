import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:keep_mobile/edit_profile.dart';

import 'Models/custom_bottom_app_bar.dart';

class ViewProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          'Profile',
          style: TextStyle(
              fontWeight: FontWeight.w500,
              color: HexColor('#515C6F'),
              fontSize: 18),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.edit),
            color: HexColor('#8890A6'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => EditProfile()),
              );
            },
          )
        ],
      ),
      body: SingleChildScrollView(
        child: isPortrait
            ? Container(
                margin: EdgeInsets.only(left: 80, right: 80),
                child: Column(
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    Center(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(250.0),
                        child: Image.asset(
                          'assets/images/profile_pic_dummy.png',
                          height: 175.0,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Jenny Mario',
                      style: TextStyle(
                        fontSize: 20,
                        color: HexColor('#8890A6'),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'jennym@gmail.com',
                      style: TextStyle(
                        fontSize: 14,
                        color: HexColor('#8890A6'),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      '13/1, street name,',
                      style: TextStyle(
                        fontSize: 11,
                        color: HexColor('#8890A6'),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'city, country',
                      style: TextStyle(
                        fontSize: 11,
                        color: HexColor('#8890A6'),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'UserID: PR20014589',
                      style: TextStyle(
                        fontSize: 9,
                        color: HexColor('#8890A6'),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            'KID',
                            style: TextStyle(
                                fontSize: 11,
                                color: HexColor('#444444'),
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        Text(
                          '2 Users (s)',
                          style: TextStyle(
                            fontSize: 9,
                            color: HexColor('#444444'),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            'Office Transport',
                            style: TextStyle(
                                fontSize: 11,
                                color: HexColor('#444444'),
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        Text(
                          '1 Users (s)',
                          style: TextStyle(
                            fontSize: 11,
                            color: HexColor('#444444'),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            'My Car',
                            style: TextStyle(
                                fontSize: 11,
                                color: HexColor('#444444'),
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        Text(
                          '2 Users (s)',
                          style: TextStyle(
                            fontSize: 11,
                            color: HexColor('#444444'),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )


            : Container(
                margin: EdgeInsets.only(left: 80, right: 80),
                child: Wrap(
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          height: isPortrait ? 50 : 10,
                        ),
                        Center(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(250.0),
                            child: Image.asset(
                              'assets/images/profile_pic_dummy.png',
                              height: 175.0,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Jenny Mario',
                          style: TextStyle(
                            fontSize: 20,
                            color: HexColor('#8890A6'),
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'jennym@gmail.com',
                          style: TextStyle(
                            fontSize: 14,
                            color: HexColor('#8890A6'),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          '13/1, street name,',
                          style: TextStyle(
                            fontSize: 11,
                            color: HexColor('#8890A6'),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'city, country',
                          style: TextStyle(
                            fontSize: 11,
                            color: HexColor('#8890A6'),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          'UserID: PR20014589',
                          style: TextStyle(
                            fontSize: 9,
                            color: HexColor('#8890A6'),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                'KID',
                                style: TextStyle(
                                    fontSize: 11,
                                    color: HexColor('#444444'),
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                            Text(
                              '2 Users (s)',
                              style: TextStyle(
                                fontSize: 9,
                                color: HexColor('#444444'),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                'Office Transport',
                                style: TextStyle(
                                    fontSize: 11,
                                    color: HexColor('#444444'),
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                            Text(
                              '1 Users (s)',
                              style: TextStyle(
                                fontSize: 11,
                                color: HexColor('#444444'),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 20.0),
                          child: Row(
                            children: [
                              Expanded(
                                child: Text(
                                  'My Car',
                                  style: TextStyle(
                                      fontSize: 11,
                                      color: HexColor('#444444'),
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                              Text(
                                '2 Users (s)',
                                style: TextStyle(
                                  fontSize: 11,
                                  color: HexColor('#444444'),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
      ),
      bottomNavigationBar: CustomBottomAppBar(1),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: HexColor('#F58E7E'),
        child: Icon(
          Icons.location_on,
          size: 45,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
