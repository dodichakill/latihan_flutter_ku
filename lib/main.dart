// Latihan 12 - Image widget

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String pesan =
      'ini merupakan pesan awal untukmu calon programmer sukses dunia akhirat :)';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Latihan 12 - Image widget',
          ),
        ),
        body: Center(
          child: Container(
            // padding: EdgeInsets.all(4),
            height: 300,
            width: 300,
            color: Colors.green,
            //dibawah ini merupakan contoh menggunakan gambar dilokal / offline
            // child: Image(
            //   image: AssetImage('images/img.jpg'),
            //   // fit: BoxFit.contain, //gambar(default) sesuai ukuran proposionalnya
            //   // fit: BoxFit.cover,// memenuhin container dan gambar tetap proposional
            //   // fit: BoxFit.fill, // memenuhin container dan gambar tidak proposional
            //   // fit: BoxFit.fitHeight, // memenuhin ukuran tinggi container dan gambar tetap proposional
            //   fit: BoxFit.fitWidth, // memenuhin ukuran lebar container dan gambar tetap proposional
            // ),
            child: Image(
              image: NetworkImage(
                  'https://cdn.idntimes.com/content-images/post/20171128/gunung6-67cf94043e5bed7288862eebd3d3c418.jpg'),
              // fit: BoxFit.contain, //gambar(default) sesuai ukuran proposionalnya
              // fit: BoxFit.cover,// memenuhin container dan gambar tetap proposional
              // fit: BoxFit.fill, // memenuhin container dan gambar tidak proposional
              // fit: BoxFit.fitHeight, // memenuhin ukuran tinggi dan gambar tetap proposionalcontainer
              fit: BoxFit
                  .fitHeight, // memenuhin ukuran lebar container dan gambar tetap proposional
            ),
          ),
        ),
      ),
    );
  }
}


// penjelasan singkat
// ----------------
// widget Image berguna untuk menampilkan sebuah gambar.
// gambarnya bisa dari lokal(offline) maupun online, jika gambarnya lokal kita perlu mendaftarkanya pada pubspec.yaml (lihat filenya). jika sudah didaftarkan kita bisa memanggilnya dengan property image: AssetImage('lokasiGambarmu.jpg'), kalo online kita bisa menggunakan property image: NetworkImage('www.linkGambarOnlineMu.jpg')
// widget image juga punya beberapa property seperti fit. lihat saja kode diatas
