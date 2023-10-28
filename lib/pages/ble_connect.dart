import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(Ble_connect());
}
class Ble_connect extends StatelessWidget{



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BLE Connection'),
        centerTitle: true,
      ),
      

      body: Column(
        children: [
          Container(width: 300, height: 150,
          decoration: ShapeDecoration(color: (0xFFF7FCFF)),)
        ],
      ),


    );
  }

}