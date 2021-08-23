import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class EditProfileTextFormField extends StatefulWidget {
  final TextEditingController _textEditingController;
  final String _labelText;

  EditProfileTextFormField(this._textEditingController, this._labelText);

  @override
  _EditProfileTextFormFieldState createState() =>
      _EditProfileTextFormFieldState();
}

class _EditProfileTextFormFieldState extends State<EditProfileTextFormField> {
  Color hintColor = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return Focus(
      onFocusChange: (hasFocus) {
        setState(() {
          hintColor = hasFocus ? HexColor('#F58E7E') : HexColor('#D4D4D4');
        });
      },
      child: TextFormField(

        controller: widget._textEditingController,
        style: TextStyle(
          fontSize: 12,
          color: HexColor('#515C6F'),
          fontWeight: FontWeight.w600
        ),
        decoration: InputDecoration(

          contentPadding: EdgeInsets.symmetric(vertical: 5),
          labelText: widget._labelText,
          labelStyle: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 11,
            color: hintColor,
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: HexColor('#F58E7E')),
          ),
        ),
      ),
    );
  }
}
