import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:keep_mobile/Home/home.dart';

import 'choose_plan.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _submitPhoneNumberPressed = false;
  TextEditingController _mobileController = TextEditingController();
  TextEditingController _codeController = TextEditingController(text: '...');

  @override
  Widget build(BuildContext context) {
    bool isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: isPortrait ? 180 : 40,
            ),
            Image.asset(
              'assets/images/keep_logo.png',
              height: isPortrait ? 200 :150,
              width: 120,
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: 16.0,
                  top: isPortrait ? 80 : 10,
                  right: 16,
                  bottom: 16),
              child: Card(
                  elevation: 10,
                  child: _submitPhoneNumberPressed
                      ? Container(
                          height: 60,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.white,
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              SizedBox(
                                width: 40,
                                child: TextField(
                                  controller: _codeController,
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                              SizedBox(
                                width: 40,
                                child: TextField(
                                  controller: _codeController,
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                              SizedBox(
                                width: 40,
                                child: TextField(
                                  controller: _codeController,
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                              SizedBox(
                                width: 40,
                                child: TextField(
                                  controller: _codeController,
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                        )
                      : Row(
                          children: [
                            Flexible(
                              fit: FlexFit.tight,
                              flex: 3,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: const Radius.circular(10.0),
                                    bottomLeft: const Radius.circular(10.0),
                                  ),
                                ),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 8.0, top: 8.0, bottom: 8),
                                      child: Image.asset(
                                        'assets/images/sri_lanka_flag.png',
                                        height: 50,
                                        width: 35,
                                      ),
                                    ),
                                    Expanded(
                                      child: TextField(
                                        decoration: InputDecoration(
                                          border: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              width: 0,
                                              style: BorderStyle.none,
                                            ),
                                          ),
                                          filled: true,
                                          hintStyle: TextStyle(
                                              color: HexColor('#302A3E')),
                                          hintText: "+94",
                                          fillColor: Colors.white70,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Flexible(
                              flex: 8,
                              fit: FlexFit.loose,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topRight: const Radius.circular(10.0),
                                    bottomRight: const Radius.circular(10.0),
                                  ),
                                ),
                                child: TextField(
                                  controller: _mobileController,
                                  decoration: new InputDecoration(
                                    border: new OutlineInputBorder(
                                      borderSide: BorderSide(
                                        width: 0,
                                        style: BorderStyle.none,
                                      ),
                                    ),
                                    filled: true,
                                    hintStyle: TextStyle(
                                      color: HexColor('#D4D4D4'),
                                      fontWeight: FontWeight.w500,
                                      fontSize: 13,
                                    ),
                                    hintText: "Enter Your Mobile Number",
                                    fillColor: Colors.white70,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )),
            ),
            SizedBox(
              height: 20,
            ),
            CircleAvatar(
              child: Center(
                child: IconButton(
                  icon: Icon(Icons.arrow_forward_sharp),
                  color: Colors.white,
                  iconSize: 25,
                  onPressed: () {
                    if (!_submitPhoneNumberPressed) {
                      setState(() {
                        _submitPhoneNumberPressed = true;
                      });
                    } else {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => ChoosePlan()),
                      );
                    }
                  },
                ),
              ),
              backgroundColor: HexColor('#F58E7E'),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              child: _submitPhoneNumberPressed
                  ? Text(
                      'Resend code in 10 seconds',
                      style: TextStyle(fontSize: 9, color: HexColor('#303030')),
                    )
                  : Column(
                      children: [
                        Text(
                          'By creating an account, you agree to our',
                          style: TextStyle(
                              fontSize: 9, color: HexColor('#303030')),
                        ),
                        Text(
                          'Terms of Service and Privacy Policy',
                          style: TextStyle(
                              fontSize: 9,
                              color: HexColor('#303030'),
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
