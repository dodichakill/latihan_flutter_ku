// Latihan 32 - Scan QR code

import 'package:flutter/material.dart';
import 'package:qrscan/qrscan.dart' as scanner;

void main() => runApp(MyApp()); //untuk mencegah aplikasi berorientasi landscape

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String text = 'Hasil QR Scan';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Latihan 32 - Scan QR code'),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(text),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    onPressed: () async {
                      text = await scanner.scan();
                      setState(() {});
                    },
                    child: Text('Scan'))
              ],
            ),
          )),
    );
  }
}

// penjelasan singkat
// ----------------
// kita perlu memasang qrscan pada pubspec.yaml.
// diatas merupakan contoh cara penggunannya sederhananya