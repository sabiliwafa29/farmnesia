import 'package:flutter/material.dart';

class choice extends StatelessWidget {
  const choice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Hayo pilih mana',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      
    );
  
  }
}
