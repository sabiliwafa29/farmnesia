import 'package:flutter/material.dart';

void main() {
  runApp(const BleConnect());
}

class BleConnect extends StatefulWidget {
  const BleConnect({Key? key});

  @override
  _BleConnectState createState() => _BleConnectState();
}

class _BleConnectState extends State<BleConnect> {
  List<String> connectedDevices = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BLE Connection',
        style: TextStyle(
          color: Colors.white,
          fontSize: 24,
          fontWeight: FontWeight.w600,
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
            child: Column(
              children: [
                Container(
                  width: 300,
                  height: 70,
                  margin: EdgeInsets.all(35),
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
                      ),
                    ],
                  ),
                  child: Center(
                      child: Text(
                        'Search BLE Device Nearby',
                        style: TextStyle(
                          color: Color(0xFFF7FCFF),
                          fontSize: 17,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                ),
                Text(
                  'Near you',
                  style: TextStyle(
                    color: Color(0xFF937D69),
                    fontSize: 12,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: connectedDevices.map((deviceID) {
              return Container(
                width: 300,
                height: 70,
                margin: EdgeInsets.all(35),
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                child: Center(
                  child: Text(
                    deviceID,
                    style: TextStyle(
                      color: Colors.black, // Ubah warna teks sesuai kebutuhan
                      fontSize: 17,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }

  void performBleSearch() {
    // Implementasikan logika pencarian BLE di sini
    // Misalnya, setelah perangkat terhubung:
    setState(() {
      connectedDevices.add('Device ID'); // Gantilah 'Device ID' dengan ID perangkat yang terhubung
    });
  }

  @override
  void initState() {
    super.initState();
    // Panggil performBleSearch ketika widget diinisialisasi.
    performBleSearch();
  }
}
