import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:keep_mobile/Models/edit_profile_text_form_field.dart';

import '../../Models/custom_bottom_app_bar.dart';

class AddChild extends StatefulWidget {
  @override
  _AddChildState createState() => _AddChildState();
}

class _AddChildState extends State<AddChild> {
  TextEditingController _fNameController = TextEditingController();
  TextEditingController _lNameController = TextEditingController();
  TextEditingController _schoolNameController = TextEditingController();
  TextEditingController _vehicleNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Container(
          // margin: EdgeInsets.only(left: 15, top: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: CircleAvatar(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                    ),
                  ),
                  backgroundColor: HexColor('#F58E7E'),
                ),
              ),
              SizedBox(
                width: 15,
              ),
              Text(
                'Add New',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: HexColor('#515C6F'),
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 0),
          child: Container(
            color: Colors.white,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                          backgroundColor:
                              MaterialStateProperty.all(Colors.white),
                          elevation: MaterialStateProperty.all(10)),
                      onPressed: null,
                      child: Text(
                        'MY KID',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: HexColor('#F58E7E')),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25.0, right: 25, top: 5),
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    elevation: 10,
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 45.0,
                        right: 45,
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Icon(
                                    Icons.location_pin,
                                    color: HexColor('#8890A6'),
                                  ),
                                  Text(
                                    'Pickup Location',
                                    style: TextStyle(
                                      fontSize: 7,
                                      color: HexColor('#8890A6'),
                                      fontWeight: FontWeight.w300,
                                    ),
                                  )
                                ],
                              ),
                              Container(
                                height: 150,
                                width: 100,
                                child: Stack(
                                  children: [
                                    ClipRRect(
                                      borderRadius:
                                          BorderRadius.circular(150.0),
                                      child: Image.asset(
                                        'assets/images/dummy_kid_3.png',
                                        height: 175.0,
                                      ),
                                    ),
                                    Positioned(
                                      height: 20,
                                      top: 110,
                                      right: 6,
                                      child: RawMaterialButton(
                                        onPressed: () {},
                                        elevation: 1.0,
                                        fillColor: HexColor('#F58E7E'),
                                        child: Icon(
                                          Icons.add,
                                          color: Colors.white,
                                          size: 18,
                                        ),
                                        shape: CircleBorder(
                                          side: BorderSide(
                                              color: Colors.white, width: 0),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Column(
                                children: [
                                  Icon(
                                    Icons.location_pin,
                                    color: HexColor('#8890A6'),
                                  ),
                                  Text(
                                    'Dropoff Location',
                                    style: TextStyle(
                                      fontSize: 7,
                                      color: HexColor('#8890A6'),
                                      fontWeight: FontWeight.w300,
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 10.0, right: 10.0, top: 12),
                            child: Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.loose,
                                  child: EditProfileTextFormField(
                                      _fNameController, 'First Name'),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Flexible(
                                  fit: FlexFit.loose,
                                  child: EditProfileTextFormField(
                                      _lNameController, 'Last Name'),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 10.0, right: 10.0, top: 15),
                            child: EditProfileTextFormField(
                                _schoolNameController, 'School Name'),
                          ),
                          // EditProfileTextFormField(_schoolNameController, 'Birthday'),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 10.0, right: 10.0, top: 25),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Birthday',
                                  style: TextStyle(
                                      color: HexColor('#8890A6'),
                                      fontSize: 7,
                                      fontWeight: FontWeight.w500),
                                ),
                                Center(
                                  child: SizedBox(
                                    height: 50,
                                    width: 200,
                                    child: CupertinoDatePicker(
                                      minimumYear: 1990,
                                      maximumYear: DateTime.now().year,
                                      mode: CupertinoDatePickerMode.date,
                                      onDateTimeChanged: (datetime) {
                                        print(datetime);
                                      },
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 10.0, right: 10.0, top: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Gender',
                                  style: TextStyle(
                                      color: HexColor('#8890A6'),
                                      fontSize: 7,
                                      fontWeight: FontWeight.w500),
                                ),
                                Icon(Icons.male),
                                Icon(Icons.female)
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 10.0, right: 10.0, top: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text('Vehicle Number',
                                    style: TextStyle(
                                        color: HexColor('#8890A6'),
                                        fontSize: 7,
                                        fontWeight: FontWeight.w500)),
                                Text(
                                  'XXX - XXXX',
                                  style: TextStyle(
                                    color: HexColor('#F58E7E'),
                                    fontSize: 8,
                                  ),
                                )
                              ],
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(
                                left: 10.0, right: 10.0, top: 25, bottom: 10),
                            child: TextButton(
                              onPressed: null,
                              child: Text(
                                'Add',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 8,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              style: TextButton.styleFrom(
                                padding: EdgeInsets.fromLTRB(40, 15, 40, 15),
                                backgroundColor: HexColor('#8890A6'),
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
                )
              ],
            ),
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
      bottomNavigationBar: CustomBottomAppBar(0),
    );
  }
}
