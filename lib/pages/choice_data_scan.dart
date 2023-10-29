import 'package:flutter/material.dart';

class Choice extends StatelessWidget 
{
  const Choice({super.key});
  
  get child => null;

  @override
  Widget build(BuildContext context) 
  {
    return Scaffold
    (
      appBar: AppBar
      (
        title: Text
        (
          'BLE Connection',
          style: TextStyle
          (
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
     body: Column
     (
      children: 
      [
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
          'Feature',
          style: TextStyle
          (
              color: Colors.black,
              fontSize: 24,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600,
              height: 0,
          ),
        ),

        Container
        (
          width: 300,
          height: 100,
          child: Transform
          (
            transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(-3.14),
            child: Container
            (
                decoration: ShapeDecoration
                (
                    gradient: LinearGradient
                    (
                        begin: Alignment(-0.99, -0.13),
                        end: Alignment(0.99, 0.13),
                        colors: [Color(0xFF50B6DC), Color(0xFFC9E0EA)],
                    ),
                    shape: RoundedRectangleBorder
                    (
                        borderRadius: BorderRadius.circular(20),
                    ),
                    shadows: 
                    [
                        BoxShadow
                        (
                            color: Color(0x3F000000),
                            blurRadius: 4,
                            offset: Offset(0, 4),
                            spreadRadius: 0,
                        ),
                    ],
                ),
            ),
          ),
        ),
      ],
      ),
    );
  }
}