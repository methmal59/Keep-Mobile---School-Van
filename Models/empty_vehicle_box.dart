import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class EmptyVehicleBox extends StatelessWidget {
  final String vehicleType;

  EmptyVehicleBox(this.vehicleType);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        height: 130,
        child: DottedBorder(
          dashPattern: [6, 6, 6, 6],
          color: HexColor('#D6D6D6'),
          borderType: BorderType.RRect,
          radius: Radius.circular(12),
          padding: EdgeInsets.all(12),
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(12)),
            child: Center(
              child: Text(
                vehicleType,
                style: TextStyle(
                  color: HexColor('#D6D6D6'),
                  fontSize: 18,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
