import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:keep_mobile/login.dart';
import 'package:keep_mobile/Models/custom_bottom_app_bar.dart';

import 'Models/edit_profile_text_form_field.dart';

class EditProfile extends StatefulWidget {
  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  TextEditingController _fNameController = TextEditingController();
  TextEditingController _lNameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _mobileController = TextEditingController();
  TextEditingController _homeController = TextEditingController();
  TextEditingController _addressController = TextEditingController();
  TextEditingController _street1Controller = TextEditingController();
  TextEditingController _street2Controller = TextEditingController();
  TextEditingController _cityController = TextEditingController();

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
                    padding: const EdgeInsets.only(left: 4),
                    child: IconButton(
                      icon: Icon(Icons.arrow_back_ios),
                      color: Colors.white,
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                  backgroundColor: HexColor('#F58E7E'),
                ),
              ),
              SizedBox(
                width: 15,
              ),
              Text(
                'Edit Profile',
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
        child: Container(
          margin: EdgeInsets.only(left: 30, right: 30),
          child: Column(
            children: [
              SizedBox(
                height: 5,
              ),
              Container(
                height: 200,
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(250.0),
                      child: Image.asset(
                        'assets/images/profile_pic_dummy.png',
                        height: 175.0,
                      ),
                    ),
                    Positioned(
                      height: 30,
                      top: 160,
                      right: 45,
                      child: RawMaterialButton(
                        onPressed: () {},
                        elevation: 1.0,
                        fillColor: HexColor('#F58E7E'),
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                        shape: CircleBorder(
                            side: BorderSide(color: Colors.white, width: 1)),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Flexible(
                    fit: FlexFit.loose,
                    child: EditProfileTextFormField(
                        _fNameController, 'First Name'),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Flexible(
                      fit: FlexFit.loose,
                      child: EditProfileTextFormField(
                          _lNameController, 'Last Name')),
                ],
              ),
              EditProfileTextFormField(_emailController, 'E-Mail'),
              EditProfileTextFormField(_mobileController, 'Mobile Number'),
              EditProfileTextFormField(_homeController, 'Home Number'),
              EditProfileTextFormField(_addressController, 'Address No.'),
              EditProfileTextFormField(_street1Controller, 'Street 1'),
              EditProfileTextFormField(_street2Controller, 'Street 2'),
              EditProfileTextFormField(_cityController, 'City'),
              SizedBox(
                height: 20,
              ),
              TextButton(
                onPressed: null,
                child: Text(
                  'Looks Good',
                  style: TextStyle(color: Colors.white),
                ),
                style: TextButton.styleFrom(
                  padding: EdgeInsets.fromLTRB(25, 15, 25, 15),
                  backgroundColor: HexColor('#8890A6'),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
              ),
              SizedBox(
                height: 60,
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Login()),
          );
        },
        backgroundColor: HexColor('#F58E7E'),
        child: Icon(
          Icons.location_on,
          size: 45,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: CustomBottomAppBar(1),
    );
  }
}
