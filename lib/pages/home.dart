import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Farmnesia',
        ),
      ),
      //kolom box welcome
      body: Column(
        children: [
          Container(
            width: 300,
            height: 150,
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
          //kolom box menu
          Column(
            children: [
              Container(
                
              ),
              //kolom tampilan amount
              Column(
                children: [
                  Container(

                  )
                ],
              ) 
            ],
          )
        ],
      ),
    );
  }
}