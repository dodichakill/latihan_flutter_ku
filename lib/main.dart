// Latihan 10 - Flexible widget

import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text(
              'Latihan 10 - Flexible widget',
            ),
          ),
          body: Column(
            children: [
              Flexible(
                flex: 1,
                child: Row(
                  children: [
                    Flexible(
                        child: Container(
                      margin: EdgeInsets.all(4),
                      color: Colors.red,
                    )),
                    Flexible(
                        child: Container(
                            margin: EdgeInsets.all(4), color: Colors.green)),
                    Flexible(
                        child: Container(
                      margin: EdgeInsets.all(4),
                      color: Colors.blue,
                    )),
                  ],
                ),
              ),
              Flexible(
                  flex: 2,
                  child: Container(
                    color: Colors.orange,
                    margin: EdgeInsets.all(4),
                  )),
              Flexible(
                  flex: 1,
                  child: Row(
                    children: [
                      Flexible(
                          flex: 1,
                          child: Container(
                            margin: EdgeInsets.all(4),
                            color: Colors.yellow,
                          )),
                      Flexible(
                          flex: 1,
                          child: Container(
                            margin: EdgeInsets.all(4),
                            color: Colors.teal,
                          ))
                    ],
                  )),
            ],
          )),
    );
  }
}

// penjelasan singkat
// ----------------
// widget flexible merupakan widget yang berguna untuk membuat sebuah tampilan responsive(dapat menyesuaikan tempatnya).
// mempunyai property flex yang berguna untuk mengatur ukuran diameter widget yang akan dibuat secara flexible.
// diatas merupakan contoh penggunaanya.
