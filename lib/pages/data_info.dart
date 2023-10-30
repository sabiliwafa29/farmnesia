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
        title: Text
        (
          'DATA INFORMATION',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Column
         ( //body
        children:[
          Container
           (
              width: 47.14,
              height: 47.14,
              decoration: BoxDecoration
              (
                image: DecorationImage
                (
                image: NetworkImage("https://via.placeholder.com/47x47"),
                fit: BoxFit.fill,
                ),
              ),
            ),
            
            Text
            (
              '1234567890',
              style: TextStyle
              (
                color: Color(0xFF55B8DC),
                fontSize: 20,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
                height: 0,
              ),
            ),

            Container(
                width: 70,
                height: 70,
                decoration: ShapeDecoration(
                    color: Color(0xFF9AD1E7),
                    shape: OvalBorder(),
                ),
            ),

            Text
            (
              'Connected',
              style: TextStyle
              (
                color: Color(0xFF937D69),
                fontSize: 14,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
                height: 0,
              ),
            ),

            Text
            (
              'Goats Information',
              style: TextStyle
              (
                  color: Colors.black,
                  fontSize: 24,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                  height: 0,
              ),
            ),
            
          Container(
            width: 47.14,
            height: 47.14,
            decoration: BoxDecoration
            (
              image: DecorationImage
              (
                image: NetworkImage("https://www.flaticon.com/free-icon/goat_616548?term=goat%27&page=1&position=3&origin=search&related_id=616548"),
                fit: BoxFit.fill,
              ),
            ),
          ),

            Column(
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
                          )
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
                    return Container(
                      width: 300,
                      height: 70,
                      margin: EdgeInsets.all(35),
                      decoration: ShapeDecoration(
                        color: Color(0xFFF5F5F5),
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
                          deviceID,
                          style: TextStyle(
                            color: Colors.black,
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
        ],
      ),
    );
  }

  void performBleSearch() {
    // Implementasikan logika pencarian BLE yang sesungguhnya di sini
    // Misalnya, setelah perangkat terhubung:
    setState(() {
      connectedDevices.clear(); // Hapus perangkat yang sebelumnya terhubung
      connectedDevices.add('Device 1');
      connectedDevices.add('Device 2');
      connectedDevices.add('Device 3');
    });
  }
}
