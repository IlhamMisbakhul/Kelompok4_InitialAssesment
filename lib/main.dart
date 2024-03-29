import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: SizedBox(
              height: 180,
              width: 300,
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          offset: const Offset(2.0, 2.0),
                          blurRadius: 4.0,
                          spreadRadius: 1.0,
                        ),
                        BoxShadow(
                          color: Colors.white.withOpacity(0.5),
                          offset: const Offset(-2.0, -2.0),
                          blurRadius: 4.0,
                          spreadRadius: 1.0,
                        ),
                      ],
                      gradient: const LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color.fromARGB(255, 223, 200, 255), // ungu muda
                          Color.fromARGB(255, 193, 140, 230), // ungu agak tua
                        ],
                      ),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          bottom: 9, // Geser ke bawah sedikit
                          right: 9, // Geser ke kanan sedikit
                          child: Opacity(
                            opacity:
                                0.2, // Ubah ke transparansi yang diinginkan (0.0 - 1.0)
                            child: Image.asset(
                              'assets/alquran.png', // Ganti dengan path gambar Al-Qur'an Anda
                              width: 120, // Sesuaikan ukuran gambar
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "Al-Fatihah",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(height: 8),
                              Text(
                                "The Opening",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(height: 8),
                              Text(
                                "——————",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(height: 8),
                              Text(
                                "MECCAN • 7 VERSES",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(height: 8),
                              Text(
                                "بِسْمِ اللّٰهِ الرَّحْمٰنِ الرَّحِيْمِ",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                  fontFamily: 'Arabic',
                                ),
                                textAlign: TextAlign.center,
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
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    ),
  );
}
