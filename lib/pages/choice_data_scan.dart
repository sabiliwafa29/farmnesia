import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Choice(),
    );
  }
}

class Choice extends StatelessWidget {
  const Choice({Key? key}) : super(key: key);

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
      body: Center(
        child: Column(
          children: [
          Container(
          width: 400,
          height: 90,
          margin: EdgeInsets.only(top: 30.0),
          child: Stack(
              children: [
                  Positioned(
                      left: 76,
                      top: 32,
                      child: Text(
                          'Connected',
                          style: TextStyle(
                              color: Color(0xFF937D69),
                              fontSize: 14,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                              height: 0,
                          ),
                      ),
                  ),
                  Positioned(
                      left: 0,
                      top: 0,
                      child: Container(
                          width: 60,
                          height: 60,
                          decoration: ShapeDecoration(
                              color: Color(0xFFEBEBEB),
                              shape: OvalBorder(),
                          ),
                      ),
                  ),
                  Positioned(
                      left: 76,
                      top: 8,
                      child: Text(
                          '1234567890',
                          style: TextStyle(
                              color: Color(0xFF55B8DC),
                              fontSize: 20,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                              height: 0,
                          ),
                      ),
                  ),
                  Positioned(
                      left: 6.86,
                      top: 6,
                      child: Container(
                          width: 47.14,
                          height: 47.14,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage("https://via.placeholder.com/47x47"),
                                  fit: BoxFit.fill,
                              ),
                          ),
                      ),
                  ),
              ],
          ),
      ),


          Column(
            children: [
              Container(
                margin: EdgeInsets.only(left: 0.0, right: 300.0),
                padding: EdgeInsets.only(top: 20,bottom: 10.0),
                child: Text(
                'Feature',
                 style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                  height: 0,
              ),
            ),
              )
            ],
          ),
            
            Container( //box biru gradien
            width: 300,
            height: 100,
            child: Stack(
                children: [
                    Positioned(
                        left: 300,
                        top: 100,
                        child: Transform(

                            transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(-3.14),
                            child: Container(
                                width: 300,
                                height: 100,
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
                    ),
                    Positioned(
                        left: 24,
                        top: 15,
                        child: Container(
                            width: 70,
                            height: 70,
                            child: Stack(
                                children: [
                                    Positioned(
                                        left: 0,
                                        top: 0,
                                        child: Container(
                                            width: 70,
                                            height: 70,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: NetworkImage("https://via.placeholder.com/70x70"),
                                                    fit: BoxFit.fill,
                                                ),
                                            ),
                                        ),
                                    ),
                                    Positioned(
                                        left: 55,
                                        top: 15,
                                        child: Column(
                                    children: [
                                      InkWell(
                                      onTap: () {
                                      performBleSearch();
                                    },
                                    child: Text(
                                      'Scan The Number \nof Weight',
                                      style: TextStyle(
                                          color: Color(0xFFF5F5F5),
                                          fontSize: 17,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w600,
                                          height: 0,
                                      ),
                                    ),
                                  ),
                                  ],
                                ),

                                        child: Transform(
                                            transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(3.14),
                                            child: Container(
                                                width: 40,
                                                height: 40,
                                                decoration: BoxDecoration(
                                                    image: DecorationImage(
                                                        image: NetworkImage("https://via.placeholder.com/40x40"),
                                                        fit: BoxFit.fill,
                                                    ),
                                                ),
                                            ),
                                        ),
                                    ),
                                ],
                            ),
                        ),
                    ),

                    Positioned(
                        left: 116,
                        top: 24,
                        child: Column(
                          children: [
                            InkWell(
                            onTap: () {
                            performBleSearch();
                          },
                           child: Text(
                            'Scan The Number \nof Weight',
                            style: TextStyle(
                                color: Color(0xFFF5F5F5),
                                fontSize: 17,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                                height: 0,
                            ),
                          ),
                         ),
                        ],
                       ),
                       
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void performBleSearch() {
}
