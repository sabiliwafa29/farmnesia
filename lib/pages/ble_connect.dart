import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';

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
      body: Column(
        children: [
          SizedBox(height: 20), // Untuk memberikan sedikit jarak antara teks dan tombol
          InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => not_available_ble(),
              ));
            },
            child: Container(
              width: 200,
              height: 50,
              color: Colors.blue,
              child: Center(
                child: Text(
                  'Connect to BLE',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}