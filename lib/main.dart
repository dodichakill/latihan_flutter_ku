// Latihan 8 - List & ListView

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // dibawah ini kita menggunakan List untuk menampung datanya
  List<Widget> widgets = [];
  int counter = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Latihan 8 - List & ListView'),
        ),
        // dibawah ini kita menggunakan Column dan akan error bila data yang ditampilkan melebihi ukuran layar

        // body: Column(
        //   children: <Widget>[
        //     Row(
        //       mainAxisAlignment: MainAxisAlignment.spaceAround,
        //       children: <Widget>[
        //         ElevatedButton(
        //             onPressed: () => setState(() {
        //                   widgets.add(Text(
        //                     'data ke - ' + counter.toString(),
        //                     style: TextStyle(fontSize: 35),
        //                   ));
        //                   counter++;
        //                 }),
        //             child: Text('tambah data')),
        //         ElevatedButton(
        //             onPressed: () => setState(() {
        //                   widgets
        //                       .removeLast(); // untuk menghapus widget terakhir
        //                   counter--;
        //                 }),
        //             child: Text('kurangi data'))
        //       ],
        //     ),
        //     Column(
        //       crossAxisAlignment: CrossAxisAlignment.start,
        //       children: widgets,
        //     )
        //   ],
        // ),

        // dibawah ini kita menggunakan ListView dan tidak akan terjadi error bila data yang ditampilkan melebihi ukuran layar melainkan akan menjadi bisa discroll

        body: ListView(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                ElevatedButton(
                    onPressed: () => setState(() {
                          widgets.add(Text(
                            'data ke - ' + counter.toString(),
                            style: TextStyle(fontSize: 35),
                          ));
                          counter++;
                        }),
                    child: Text('tambah data')),
                ElevatedButton(
                    onPressed: () => setState(() {
                          widgets
                              .removeLast(); // untuk menghapus widget terakhir
                          counter--;
                        }),
                    child: Text('kurangi data'))
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: widgets,
            )
          ],
        ),
      ),
    );
  }
}

// penjelasan singkat
// ----------------
// gunakan List untuk menampung beberapa data sekaligus
// gunakan ListView dari pada column/row untuk menghindari terjadinya error ketika data yang ditampilkan melebihi batas layar
