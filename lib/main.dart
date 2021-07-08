// Latihan 27 - mengcustom tampilan TabBar

import 'package:flutter/material.dart';

void main() => runApp(MyApp()); //untuk mencegah aplikasi berorientasi landscape

class MyApp extends StatelessWidget {
  TabBar myTabBar = TabBar(
    // indicatorColor: Colors.blue, //berfungsi untuk mengubah warna indicator(garis bawah)

    indicator: BoxDecoration(
      color: Colors.purple,
      border: Border(
          top:
              BorderSide(color: Colors.white, width: 5) //memberikan border atas
          ),
    ),
    tabs: [
      //berisi beberapa tab dan isi dari tabnya bebas
      Tab(
        icon: Icon(Icons.album_rounded),
        text: ('album'),
      ),
      Tab(
        icon: Icon(Icons.computer),
        child: Text('News'),
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              'Latihan 27 - mengcustom tampilan TabBar',
              style: TextStyle(fontSize: 15.5),
            ),
            bottom: PreferredSize(
                preferredSize: Size.fromHeight(myTabBar.preferredSize
                    .height), //berfungsi untuk mengetahui tinggi secara otomatis dari myTabBar
                child: Container(
                  child: myTabBar,
                  color: Colors.green,
                )),
          ),
          body: TabBarView(
            //untuk menambahkan data pada setiap tab dan dapat langsung dilihat
            children: [
              Center(
                child: Text('isi data dari tab 1'),
              ),
              Center(
                child: Text('isi data dari tab 2'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
// penjelasan singkat
// ----------------
// ada di kodenya
