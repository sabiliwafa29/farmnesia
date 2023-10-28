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
          style: TextStyle(
            // color: Colors.white,
            fontSize: 20,
          ),
        ),
        backgroundColor: Color(0xFF3DA6D2),
        
        elevation: 0,
        centerTitle: true,
        leading: Container(
          // margin: EdgeInsets.all(10),
          alignment: Alignment.center,
          child: SvgPicture.asset(
              'assets/vector_1.svg', 
              width: 100, 
              height: 100, 
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            
          ),
        ],
      ),
    );
  }
}