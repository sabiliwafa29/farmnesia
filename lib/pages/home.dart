import 'package:farmnesia/pages/ble_connect.dart';
import 'package:farmnesia/pages/scan_ocr.dart';
import 'package:flutter/material.dart';
import 'package:fake_async/fake_async.dart';


class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Farmnesia'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 300,
            height: 150,
            margin: EdgeInsets.only(left: 40.0),
            padding: EdgeInsets.only(left: 20.0, right: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    height: 3,
                  ),
                ),
                SizedBox(height: 10.0),
                Text(
                  'Application for Monitoring Goat and the cage',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w300,
                    height: 1.2,
                  ),
                ),
              ],
            ),
            decoration: ShapeDecoration(
              color: Color(0xFFF7FCFF),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
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
          Column(
            children: [
              Container(
                margin: EdgeInsets.only(left: 0.0, right: 160.0),
                padding: EdgeInsets.only(top: 30.0, bottom: 10.0),
                child: Text(
                  'Cage 1',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    height: 5,
                  ),
                ),
              ),
              Column(
                children: [
                  Container(
                    width: 300,
                    height: 185,
                    margin: EdgeInsets.only(left: 40.0, bottom: 20),
                    padding: EdgeInsets.all(20.0),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment(-0.94, -0.34),
                        end: Alignment(0.94, 0.34),
                        colors: [Color(0xFFA0D3E6), Color(0xFF3DA6D2)],
                      ),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x3F000000),
                          blurRadius: 4,
                          offset: Offset(0, 4),
                          spreadRadius: 0,
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 10.0, right: 130.0, bottom: 100.0),
                          alignment: Alignment.topLeft,
                          width: 10,
                          height: 5,
                          decoration: BoxDecoration(
                            color: Color(0xFFEAE6E1),
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
                        )
                      ],
                    )
                  ),

                  Column(
                    children: [
                      Container(
                        width: 300,
                        height: 85,
                        margin: EdgeInsets.only(left: 40.0),
                        padding: EdgeInsets.all(20.0),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment(-0.94, -0.34),
                            end: Alignment(0.94, 0.34),
                            colors: [Color(0xFFA0D3E6), Color(0xFF3DA6D2)],
                          ),
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0x3F000000),
                              blurRadius: 4,
                              offset: Offset(0, 4),
                              spreadRadius: 0,
                            ),
                          ],
                        ),
                      ),
                      Column(
                        children: [
                          SizedBox(height: 20),
                          InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(builder: (context) => BleConnect(),));
                            },
                            child: Container(
                              width: 200,
                              height: 50,
                              margin: EdgeInsets.only(left: 40.0, top: 20.0),
                              child: Center(
                                child: Text(
                                  'Connect to BLE',
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
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(height: 20),
                          InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(builder: (context) => Scan()));
                            },
                            child: Container(
                              width: 200,
                              height: 50,
                              margin: EdgeInsets.only(left: 40.0, top: 20.0),
                              child: Center(
                                child: Text(
                                  'Camera',
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
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}