// latihan 1 - hello world

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('latihan 1'),),
        body: Center(child: Text("Hello World !")),
      ),
    );
  }
}


// penjelasan singkat
// ----------------
// untuk membuat sebuah class StatelessWidget secara emmet kita bisa mengetik stl lalu enter
// untuk membuat sebuah class StatefulWidget secara emmet kita bisa mengetik stf lalu enter
// sebuah method pada flutter disebut widget
// Text() merupakan function (widget) untuk menampilkan teks
// widget Scaffold() merupakan tampilan dasar aplikasi android yang memiliki setidaknya ada 2 bagian utama appbar dan body
// appbar untuk aplikasi bar
// body untuk body applikasi
