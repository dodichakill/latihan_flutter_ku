// latihan 5 - Stateless & stateful widget

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int number = 0;
  void tambahBilangan() {
    setState(() {
      number += 1;
    });
  }

  void kurangBilangan() {
    setState(() {
      number -= 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('latihan 5 Stateful & Stateless widget'),
        ),
        body: Container(
          margin: EdgeInsets.fromLTRB(10, 120, 10, 0),
          height: 400,
          width: 400,
          decoration: BoxDecoration(
            color: Colors.tealAccent,
            borderRadius: BorderRadius.circular(40),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment:
                  MainAxisAlignment.center, //menengahkan isi secara vertikal
              children: <Widget>[
                Text(number.toString()),
                ElevatedButton(
                  onPressed: tambahBilangan,
                  child: Text('tambah bilangan'),
                ),
                ElevatedButton(
                  child: Text('kurangi bilangan'),
                  onPressed: kurangBilangan,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// penjelasan singkat
// ----------------
// Stateless widget merupakan widget yang tidak mempunyai state,
// stateful widget merupakan widget yang mempunyai state,
// state merupakan sebuah keadaan. contohnya air mempunyai 3 keadaan yaitu cair, beku, uap/gas dalam keadaan tertentu
// dan untuk membuat state langsung menampilkan state terbaru maka state tersebut harus berada pada function setState(){}
// dan diatas merupakan contoh dari stateful widget