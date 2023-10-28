import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: 360, // Replace with your desired width
            height: 800, // Replace with your desired height
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/android_lar.png'), // Replace with your image asset path
                fit: BoxFit.cover,
              ),
            ),
            child: SvgPicture.asset(
              'assets/vector_1.svg', 
              width: 10, 
              height: 10, 
            ),
          ),
        ],
      ),
    );
  }
}