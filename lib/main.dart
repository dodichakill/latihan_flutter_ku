// latihan 6 - Anonymous Method

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int number = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Latihan 6 - Anonymous Method'),
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
                  // dibawah ini merupakan contoh anonymous method menggunakan arrow function
                  onPressed: () => setState(() => number += 1),
                  child: Text('( + ) bilangan'),
                ),
                ElevatedButton(
                  child: Text('( - ) bilangan'),
                  // dibawah ini menggunakan anonymous method tanpa arrow function
                  onPressed: () {
                    setState(() {
                      number -= 1;
                    });
                  },
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
// Anonymous method adalah method yang tidak mempunyai nama, anonymous method berfungsi untuk membuat sebuah method/function yang hanya dipakai sekali.
// anonymous method bisa ditulis dengan langsung dengan parameter dan body nya contoh:
// () { ... }
// jika body codenya hanya sebaris maka kita bisa menggunakan arrow function/arrow fat seperti berikut:
// () => ...