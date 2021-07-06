// Latihan 17 - Card Widget

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.blueAccent,
          appBar: AppBar(
            title: Text('Latihan 17 - Card Widget'),
          ),
          body: Container(
            margin: EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                Card(
                  elevation: 6,
                  child: Row(
                    children: [
                      Container(
                          margin: EdgeInsets.all(10),
                          child: Icon(Icons.android)),
                      Text('Ini merupakan contoh dari widget card')
                    ],
                  ),
                ),
                Card(
                  shadowColor: Colors.red,
                  elevation: 6,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        margin: EdgeInsets.all(10),
                        padding: EdgeInsets.all(5),
                        child: Column(
                          children: [Icon(Icons.adb), Text('pilihan 1')],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        padding: EdgeInsets.all(5),
                        child: Column(
                          children: [Icon(Icons.ac_unit), Text('pilihan 2')],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        padding: EdgeInsets.all(5),
                        child: Column(
                          children: [
                            Icon(Icons.access_time),
                            Text('pilihan 3')
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        padding: EdgeInsets.all(5),
                        child: Column(
                          children: [
                            Icon(Icons.add_a_photo),
                            Text('pilihan 4')
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}

// penjelasan singkat
// ----------------
// Card merupakan widget yang berfungsi untuk membuat sebuah card. ia mempunyai beberapa property