// Latihan 9 - AnimatedContainer & GestureDetector

import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // kita akan membuat sebuah animatedContainer ditengah2 layar yang nanti jika diklik nanti akan berubah warna dan ukuran panjang, tingginya secara random.

  Random random = Random();
  String pesan = 'Pesan dinamis';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Latihan 9 - AnimatedContainer & GestureDetector',
            style: TextStyle(fontSize: 13.5),
          ),
        ),
        body: Center(
          child: GestureDetector(
            onTap: () {
              setState(() {});
            },
            onDoubleTap: () {
              setState(() {
                pesan = 'hello calon programer sukses :)';
              });
            },
            onLongPress: () {
              setState(() {
                pesan = 'semoga sukses selalu :)';
              });
            },
            child: AnimatedContainer(
              duration: Duration(milliseconds: 700),
              width: 50.0 + random.nextInt(201),
              height: 50.0 + random.nextInt(201),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color.fromARGB(255, random.nextInt(256),
                    random.nextInt(256), random.nextInt(256)),
              ),
              child: Center(
                child: Text(
                  pesan,
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// penjelasan singkat
// ----------------
// widget GestureDetector berfungsi untuk mendeteksi sentuhan pada widget childnya, pada contoh diatas childnya adalah AnimatedContainer, dan pada saat disentuh maka akan menjalankan suatu method pada contoh diatas kita menggunakan onTap: () {setState(() {})} yang berarti kita akan merefresh halaman setiap kita klik, dan kita menggunakan onDoubleTap: akan mengubah pesan menjadi hello calon programer sukses, dan onLongPress: akan mengubah pesan menjadi semoga sukses selalu :)
// widget AnimatedContainer merupakan containernya animasi yang akan diberikan pada nya. pada contoh diatas kita membuat sebuah animatedContainer ditengah2 layar yang nanti jika diklik nanti akan berubah warna dan ukuran panjang, tingginya secara random. kita menggunakan 50.0 untuk nilai minimal dan menggunakan random.nextInt(201) yang artinya kita akan menggenerate nilai antara nilai minimal hingga nilai 200. dan memiliki properti duration yang berisi durasi yang akan diberikan untuk melihat animasinya
