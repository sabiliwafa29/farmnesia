import 'package:farmnesia/pages/choice_data_scan.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BleConnect());
}

class BleConnect extends StatefulWidget {
  const BleConnect({super.key});

  @override
  _BleConnectState createState() => _BleConnectState();

  static map(InkWell Function(dynamic deviceID) param0) {}
}

class _BleConnectState extends State<BleConnect> {
  List<String> connectedDevices = [];

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
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            width: 360,
            height: 600,
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    performBleSearch();
                  },
                  child: Container(
                    width: 300,
                    height: 70,
                    margin: EdgeInsets.all(15),
                    child: Center(
                      child: Text(
                        'Search BLE Device Nearby',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    decoration: ShapeDecoration(
                      gradient: LinearGradient(
                        begin: Alignment(-0.99, -0.13),
                        end: Alignment(0.99, 0.13),
                        colors: [Color(0xFF50B6DC), Color(0xFFC9E0EA)],
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
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
                  ),
                ),
                const Text(
                  'Near you',
                  style: TextStyle(
                    color: Color(0xFF937D69),
                    fontSize: 12,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Column(
                  children: connectedDevices.map((deviceID) {
                    return InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => Choice()));
                      },
                      child: Container(
                        width: 300,
                        height: 70,
                        margin: EdgeInsets.all(
                            10), // Mengurangi margin agar lebih pas
                        decoration: BoxDecoration(
                          color: Color(0xFFF5F5F5),
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
                            deviceID,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 17,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void performBleSearch() {
    setState(() {
      connectedDevices.clear(); // Hapus perangkat yang sebelumnya terhubung
      connectedDevices.add('Device 1');
      connectedDevices.add('Device 2');
      connectedDevices.add('Device 3');
    });
  }
}
