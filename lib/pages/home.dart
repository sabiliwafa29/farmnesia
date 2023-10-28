import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
<<<<<<< HEAD
      appBar: AppBar(
        title: Text(
          'Farmnesia', 
        ),
      ),
      //kolom box welcome
      body: Column(
  crossAxisAlignment: CrossAxisAlignment.start, // Menyusun teks dari kiri ke kanan
  children: [
    Container(
      width: 300,
      height: 150,
      margin: EdgeInsets.only(left: 40.0), // Mengatur margin kiri untuk teks pertama
      padding: EdgeInsets.all(20.0), // Menambahkan padding pada teks pertama
      child: Text(
        'Welcome',
        style: TextStyle(
          color: Colors.black,
          fontSize: 24,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w600,
          height: 3,
        ),
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
          
          //kolom box menu
          Column(
            children: [
              Container(
                margin: EdgeInsets.only(left: 0.0, right: 160.0), // Mengatur margin kiri untuk teks pertama
                padding: EdgeInsets.only(top: 30.0, bottom: 10.0), // Menambahkan padding pada teks pertama
                child: Text(
                  'Menu',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    height: 0,
                  ),
                ),
              ),
              //kolom tampilan amount
              Column(
                children: [
                  Container(
                    width: 300,
                    height: 185,
                    margin: EdgeInsets.only(left: 40.0), // Mengatur margin kiri untuk teks pertama
                    padding: EdgeInsets.all(20.0), // Menambahkan padding pada teks pertama
                    decoration: ShapeDecoration(
                        gradient: LinearGradient(
                            begin: Alignment(-0.94, -0.34),
                            end: Alignment(0.94, 0.34),
                            colors: [Color(0xFFA0D3E6), Color(0xFF3DA6D2)],
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                        ),
                    ),
                  )
                ],
              ) 
            ],
          )
=======
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
>>>>>>> ab821fe4224a3d2ab9fafb92f06789c008843a9d
        ],
      ),
    );
  }
}