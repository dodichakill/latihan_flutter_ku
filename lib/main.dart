// Latihan 16 - AppBar, IconButton, Icon

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
          leading: Icon(
            Icons.wysiwyg,
            color: Colors.white,
          ),
          title: Text(
            'Contoh AppBar',
            style: TextStyle(color: Colors.white),
          ),
          actions: <Widget>[
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.settings),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.exit_to_app),
            ),
          ],
          flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.blue, Colors.greenAccent],
                    begin: FractionalOffset.topLeft,
                    end: FractionalOffset.bottomRight),
                image: DecorationImage(
                    // image: AssetImage('images/texture-kayu.jpg'),
                    image: AssetImage('images/texture-kayu.png'),
                    fit: BoxFit.cover)),
          )),
      body: Center(
        child: Container(
            decoration: BoxDecoration(
                color: Colors.blue, borderRadius: BorderRadius.circular(20)),
            padding: EdgeInsets.all(10),
            child: Text(
              'Latihan 16 - AppBar, IconButton, Icon',
              style: TextStyle(color: Colors.white),
            )),
      ),
    ));
  }
}

// penjelasan singkat
// ----------------
// AppBar merupakan widget yang berfungsi untuk memberikan keterangan di bar, keterangan tersebut bisa berupa apa saja seperti widget text maupun widget lainya. AppBar juga memiliki beberapa property seperti:
// - leading, merupakan property yang akan menampilkan widget disebelah kiri 
// - title, merupakan property yang akan menampilkan widget disebelah kanan leading
// - actions,merupakan property yang akan menampilkan widget disebelah kanan title
// - flexibleSpace, merupakan property yang berguna untuk mengatur background suatu appBar
// Icon merupakan widget yang berfungsi untuk menampilkan gambar icon dan dapat berisi nilai Icons.(tekan ctrl + spacebar) yang mempunyai berbagai icon yang telah disediakan flutter,
// ButtonIcon merupakan widget icon yang berguna untuk menjadi tombol, didalamnya juga terdapat porperty onPressed untuk method yang akan dijalankan ketika tombol diklik, dan properti icon yang berisi widget Icon
// 
