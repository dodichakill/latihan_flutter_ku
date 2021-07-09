// Latihan 29 - Transform widget (membuat custom button belah ketupat)

import 'package:flutter/material.dart';
import 'package:latihan_flutter_ku/colorful_button.dart';

void main() => runApp(MyApp()); //untuk mencegah aplikasi berorientasi landscape

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Latihan 29 - Transform Widget'),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.purple,
                ),
                padding: EdgeInsets.all(15),
                child: Text(
                  'membuat custom button belah ketupat',
                  style: TextStyle(color: Colors.white),
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ColorfulButton(Colors.red, Colors.blue, Icons.adb),
                ColorfulButton(Colors.amber, Colors.green, Icons.comment),
                ColorfulButton(Colors.green, Colors.purple, Icons.computer),
                ColorfulButton(Colors.blue, Colors.red, Icons.account_box),
              ],
            ),
          ],
        )),
      ),
    );
  }
}

// penjelasan singkat
// ----------------
// Widget Transform berguna untuk merubah suatu posisi objek. 
// lihat penjelasan lainya di codenya