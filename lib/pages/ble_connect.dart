import 'package:flutter/material.dart';

void main() {
  runApp(const ble_connect());
}

class ble_connect extends StatelessWidget {
  const ble_connect({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BLE Connection',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.w600,
            height: 1, // Perubahan height ke 1 untuk mengubah spasi di bawah judul
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            width: 360,
            height: 710,
            decoration: BoxDecoration( // Mengubah ShapeDecoration menjadi BoxDecoration
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 300,
                height: 70,
                decoration: BoxDecoration( // Mengubah ShapeDecoration menjadi BoxDecoration
                  gradient: LinearGradient(
                    begin: Alignment(1.00, 0.05),
                    end: Alignment(-1, -0.05),
                    colors: [Color(0xFF50B6DC), Color(0xFF96D0E7)],
                  ),
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x3F000000),
                      blurRadius: 4,
                      offset: Offset(0, 4),
                      spreadRadius: 0,
                    ),
                  ],
                ),
                child: Center(
                  child: Text(
                    'Search BLE Device Nearby',
                    style: TextStyle(
                      color: Color(0xFFF7FCFF),
                      fontSize: 17,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
