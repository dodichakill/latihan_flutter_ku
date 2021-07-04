// latihan 3 - row dan column

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('latihan 3 - Row & Column'),
          ),
          // body: Row(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: <Widget>[
          //     Text('teks 1'),
          //     Text('teks 2'),
          //     Text('teks 3'),
          //   ],
          // )),

          // body: Column(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: <Widget>[
          //     Text('teks 1'),
          //     Text('teks 2'),
          //     Text('teks 3'),
          //   ],
          // )),

          // body: Column(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: <Widget>[
          //     Text('teks 1'),
          //     Text('teks 2'),
          //     Text('teks 3'),
          //     Row(
          //       children: <Widget>[
          //         Text('teks 4'),
          //         Text('teks 5'),
          //         Text('teks 6'),
          //       ],
          //     )
          //   ],
          // )),

          // body: Row(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: <Widget>[
          //     Text('teks 1'),
          //     Text('teks 2'),
          //     Text('teks 3'),
          //     Row(
          //       children: <Widget>[
          //         Text('teks 4'),
          //         Text('teks 5'),
          //         Text('teks 6'),
          //       ],
          //     )
          //   ],
          // )),

          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('teks 1'),
              Text('teks 2'),
              Text('teks 3'),
              Row(
                children: <Widget>[
                  Text('teks 4'),
                  Text('teks 5'),
                  Text('teks 6'),
                ],
              )
            ],
          )),

    );
  }
}

// penjelasan singkat
// ----------------
// children:  <Widget>[] berfungsi untuk menampilkan beberapa widget sekaligus
// widget Column berfungsi untuk mengatur tataletak widget yang ada dicolumn disusun secara kebawah (vertikal)
// widget Row berfungsi untuk mengatur tataletak widget yang ada dirow disusun secara kesamping (horizontal)
// widget column dan row memiliki property:
// - mainAxisAlignment: yang bisa memiliki value MainAxisAlignment.center yang jika dipakai dalam row maka akan menengahkan letaknya secara horizontal sedangkan column akan menengahkan secara vertikal
// - crossAxisAlignment: yang bisa memiliki value CrossAxisAlignment.start yang jika dipakai dalam column akan ke kiri secara vertikal