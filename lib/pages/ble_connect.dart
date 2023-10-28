import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(Ble_connect());
}
class Ble_connect extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BLE Connection',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            // fontFamily: 'Poppins',
            fontWeight: FontWeight.w600,
            height: 0,
          ),
        ),
      ),
    );
  }
}