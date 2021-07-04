// latihan 4 - Container Widget

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('latihan 4 - Container Widget'),
          ),
          // body: Container(
          //   color: Colors.purple,
          //   margin: EdgeInsets.all(10),
          //   padding: EdgeInsets.only(bottom: 10, top: 10),
          //   child: Container(
          //     color: Colors.blue,
          //     margin: EdgeInsets.fromLTRB(10, 20, 30, 40),
          //   ),
          // )),

          // body: Container(
          //   color: Colors.indigo,
          //   margin: EdgeInsets.all(10),
          //   padding: EdgeInsets.only(bottom: 10, top: 10),
          //   child: Container(
          //     // memberikan gradasi dari kiri ke kanan
          //     decoration: BoxDecoration(
          //         gradient: LinearGradient(colors: <Color>[
          //       Colors.yellow,
          //       Colors.green,
          //       Colors.lightBlue,
          //       Colors.purple
          //     ])),
          //     margin: EdgeInsets.only(top: 10, bottom: 10),
          //   ),
          // )),

          // body: Container(
          //   color: Colors.indigo,
          //   margin: EdgeInsets.all(10),
          //   padding: EdgeInsets.only(bottom: 10, top: 10),
          //   child: Container(
          //     // memberikan gradasi dari atas kiri ke bawah kanan
          //     decoration: BoxDecoration(
          //         gradient: LinearGradient(
          //             begin: Alignment.topLeft,
          //             end: Alignment.bottomRight,
          //             colors: <Color>[
          //           Colors.yellow,
          //           Colors.green,
          //           Colors.lightBlue,
          //           Colors.purple
          //         ])),
          //     margin: EdgeInsets.only(top: 10, bottom: 10),
          //   ),
          // )),

          body: Container(
            color: Colors.indigo,
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.only(bottom: 10, top: 10),
            child: Container(
              // memberikan border radius
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(50)),
              margin: EdgeInsets.all(10),
            ),
          )),
    );
  }
}

// penjelasan singkat
// ----------------
// Widget Container merupakan widget pembungkus
// widget ini mempunyai property seperti berikut:
// - color
// berfungsi untuk memberikan warna kepada container, dan bisa bernilai Colors.blue yang artinya container berwarna biru
// - margin
// untuk memberikan jarak container ke-luar container, bisa bernilai: EdgeInsets.all(10) yang berarti semua sisinya container memiliki jarak ke-luar 10, EdgeInsets.only(bottom: 10, top: 10) yang berarti hanya sisi bagian bawah dan atasnya container memiliki jarak ke-luar 10, EdgeInsets.fromLTRB(10, 20, 30, 40) artinya dari sisi kiri memiliki jarak ke-luar 10, atas 20, kanan 30, bawah 40
// - padding
// untuk memberikan jarak container ke-dalam container, bisa bernilai: EdgeInsets.all(10) yang berarti semua sisinya container memiliki jarak ke-dalam 10, EdgeInsets.only(bottom: 10, top: 10) yang berarti hanya sisi bagian bawah dan atasnya container memiliki jarak ke-dalam 10, EdgeInsets.fromLTRB(10, 20, 30, 40) artinya dari sisi kiri memiliki jarak ke-dalam 10, atas 20, kanan 30, bawah 40
// - child
// yang berfungsi untuk membuat/menambahkan turunan widget lainnya kedalam container
// - decoration
// berfungsi untuk memberikan dekorasi/styling pada container, bisa berisi widget BoxDecoration yang bernilai gradient: LinearGradient(colors: <Color>[Colors.yellow, Colors.red, Colors.green]) yang berarti container tersebut memiliki gradasi warna dari kiri kuning, dari tengah merah dan dari kanan hijau







