import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
void main() {
  runApp(const Ble_connect());
}
class Ble_connect extends StatelessWidget{
  const Ble_connect({super.key});

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




      body: Column(
        children: [
          Container(
        width: 360,
        height: 710,
        decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
        ),
    ),
),  
      Column (
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
    width: 300,
    height: 70,
    decoration: ShapeDecoration(
        gradient: LinearGradient(
            begin: Alignment(1.00, 0.05),
            end: Alignment(-1, -0.05),
            colors: [Color(0xFF50B6DC), Color(0xFF96D0E7)],
        ),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
        ),
        shadows: [
            BoxShadow(
                color: Color(0x3F000000),
                blurRadius: 4,
                offset: Offset(0, 4),
                spreadRadius: 0,
            )
        ],
    ),
)
        ],
      )
        ],
      )
      
      









    );
  }
}